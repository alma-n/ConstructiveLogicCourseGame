#!/usr/bin/env bash

set -Eeuo pipefail
trap cleanup SIGINT SIGTERM ERR EXIT

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

usage() {
  cat <<-EOF
Usage: $(basename "${BASH_SOURCE[0]}") [-hv] WORLD_NAME

Creates a new world in the Lean game. Don't use spaces in WORLD_NAME.

Available options:

-h, --help      Print this help and exit
-v, --verbose   Print script debug info
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

# script logic here
world_name=${args[0]}

default_level='import Game.Metadata

World "'${world_name}'"
Level 1

Title "Title"

Statement : A → A := by
  intro a
  exact a
'

default_module_file='import Game.Levels.'${world_name}'.L00

World "'${world_name}'"
Title "Title"

Introduction ""
'

mkdir -p "Game/Levels/${world_name}"
echo "$default_level" >> "Game/Levels/${world_name}/L00.lean"
echo "$default_module_file" >> "Game/Levels/${world_name}.lean"

new_import_line="import Game.Levels.${world_name}"
sed -i -e '/^$/{i'"${new_import_line}" -e ':a;n;ba}' "Game.lean"
msg "${GREEN}[+]${NOFORMAT} Added a new import to Game.lean: ${new_import_line}"

msg "${GREEN}[+]${NOFORMAT} Created a new world '${world_name}'"
msg "${CYAN}[*]${NOFORMAT} Add the wanted dependencies Game.lean:"
msg
msg "  Dependency Whatever → ${world_name}"
