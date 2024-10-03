#!/usr/bin/env bash

set -Eeuo pipefail
trap cleanup SIGINT SIGTERM ERR EXIT

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

usage() {
  cat <<-EOF
Usage: $(basename "${BASH_SOURCE[0]}") [-hv] ACTION WORLD_NAME

Utility for working with Lean game levels.

Available options:

-h, --help      Print this help and exit

Actions:

create          Creates a new level in world WORLD_NAME
renumber        Renumbers the levels in world WORLD_NAME according to their filename
disable         Disables a level (removes it from the import)
EOF
  exit
}

cleanup() {
  trap - SIGINT SIGTERM ERR EXIT
  # script cleanup here
}

setup_colors() {
  if [[ -t 2 ]] && [[ -z "${NO_COLOR-}" ]] && [[ "${TERM-}" != "dumb" ]]; then
    NOFORMAT='\033[0m' RED='\033[0;31m' GREEN='\033[0;32m' ORANGE='\033[0;33m' BLUE='\033[0;34m' PURPLE='\033[0;35m' CYAN='\033[0;36m' YELLOW='\033[1;33m'
  else
    NOFORMAT='' RED='' GREEN='' ORANGE='' BLUE='' PURPLE='' CYAN='' YELLOW=''
  fi
}

msg() {
  echo >&2 -e "${1-}"
}

die() {
  local msg=$1
  local code=${2-1} # default exit status 1
  msg "$msg"
  exit "$code"
}

parse_params() {
  # default values of variables set from params
  flag=0
  param=''

  while :; do
    case "${1-}" in
    -h | --help) usage ;;
    -v | --verbose) set -x ;;
    --no-color) NO_COLOR=1 ;;
    -?*) die "Unknown option: $1" ;;
    *) break ;;
    esac
    shift
  done

  args=("$@")

  # check required params and arguments
#   [[ -z "${param-}" ]] && die "Missing required parameter: param"
  [[ ${#args[@]} -eq 0 ]] && die "Missing script arguments"

  return 0
}

parse_params "$@"
setup_colors

twodigit() {
  printf "%02d" "$@"
}

create() {
  world_name="${args[1]}"
  if [ -z "${args[2]:-}" ]; then
    # Old version: sorts by filename instead
    # final_level_num=$(sed -nE 's/^Level\s+([0-9]+)$/\1/p' Game/Levels/${world_name}/$(ls Game/Levels/${world_name} |sort -n |tail -1))
    final_level_num=$(find Game/Levels/${world_name}/ -type f -exec sed -nE 's/^Level\s+([0-9]+)$/\1/p' {} \; | sort -n |tail -1)
    msg "${GREEN}[+]${NOFORMAT} Found last level with number: $final_level_num"
  else
    final_level_num="${args[2]}"
  fi
  level_name="L$(twodigit $(( ${final_level_num} ))).lean"

  default_level='
import Game.Metadata

World "'${world_name}'"
Level '$(( ${final_level_num} + 1 ))'

Title "Title"

Statement : A → A := by
  intro a
  exact a
'

  if test -f Game/Levels/${world_name}/${level_name}; then
    die "${RED}[-]${NOFORMAT} Game/Levels/${world_name}/${level_name} already exists! Try renumbering or renaming the levels."
  fi

  msg "${CYAN}[*]${NOFORMAT} Creating a new level: Game/Levels/${world_name}/${level_name}"
  echo "$default_level" > "Game/Levels/${world_name}/${level_name}"

  new_import_line="import Game.Levels.${world_name}.L$(twodigit $(( ${final_level_num} )))"
  sed -i -e '/^$/{i'"${new_import_line}" -e ':a;n;ba}' "Game/Levels/${world_name}.lean"
  msg "${GREEN}[+]${NOFORMAT} Added a new import to Game/Levels/${world_name}.lean: ${new_import_line}"
}

renumber() {
  world_name="${args[1]}"

  shopt -s nullglob
  levels=(Game/Levels/${world_name}/*)
  for level in "${levels[@]}"; do
    level_num=$(echo "${level}" |sed -En 's/.*L([0-9]+)\.lean/\1/p')
    if [ -z "${level_num}" ]; then
      msg "${ORANGE}[#]${NOFORMAT} Unable to find level number in the filename ${level}"
    else
      level_num=$((10#$level_num)) # convert to decimal number, removes leading zeros
      old_level_num=$(sed -nE 's/^Level\s+([0-9]+)$/\1/p' "${level}")
      new_level_num=$(( ${level_num} + 1 ))
      if [ "${old_level_num}" == "${new_level_num}" ]; then continue; fi

      sed -E -i 's/^Level\s+[0-9]+$/Level '"${new_level_num}"'/g' "${level}"
      msg "${GREEN}[+]${NOFORMAT} Set level number in ${level}: ${old_level_num} -> ${new_level_num}"
    fi
  done
}

disable() {
  world_name="${args[1]}"
  num="${args[2]}"

  shopt -s nullglob
  levels=(Game/Levels/${world_name}/*)
  for level in "${levels[@]}"; do
    level_num=$(sed -nE 's/^Level\s+([0-9]+)$/\1/p' "${level}")
    if [ "${level_num}" == "${num}" ]; then
      filename=$(basename -- "${level}")
      filename=${filename%.*}
      if grep -q '^import.*'"${filename}$" "Game/Levels/${world_name}.lean"; then
        sed -E -i 's/^(import.*'"${filename}"')$/-- \1/g' "Game/Levels/${world_name}.lean"
        msg "${GREEN}[+]${NOFORMAT} Disabled import of ${filename} in Game/Levels/${world_name}.lean"
        return 0
      elif grep -q '^-- import.*'"${filename}$" "Game/Levels/${world_name}.lean"; then
        sed -E -i 's/^-- (import.*'"${filename}"')$/\1/g' "Game/Levels/${world_name}.lean"
        msg "${GREEN}[+]${NOFORMAT} Enabled import of ${filename} in Game/Levels/${world_name}.lean"
        return 0
      fi
    fi
  done
  msg "${ORANGE}[#]${NOFORMAT} No level ${num} found or its import is missing from Game/Levels/${world_name}.lean"
}

case "${args[0]}" in
  create) create ;;
  renumber) renumber ;;
  disable) disable ;;
  *) die "Unknown action: ${args[0]}" ;;
esac