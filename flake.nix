{
  description = "Constructive Logic and Formal Proof High-school Course: Lean Game";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
      ];
      perSystem =
        {
          config,
          self',
          inputs',
          pkgs,
          system,
          ...
        }:
        let
          autobuild = pkgs.writeShellScriptBin "autobuild" ''
            ${pkgs.elan}/bin/lake build
            echo starting inotifywait
            ${pkgs.inotify-tools}/bin/inotifywait -q -e close_write,moved_to,create -r -m ./Game.lean -m ./Game/ |
              while read -r directory events filename; do
                ${pkgs.elan}/bin/lake build
              done
          '';
        in
        {
          # Per-system attributes can be defined here. The self' and inputs'
          # module parameters provide easy access to attributes of the same
          # system.

          packages.autobuild = autobuild;

          devShells.default = pkgs.mkShell {
            packages = with pkgs; [
              autobuild
              elan
            ];
          };
        };
      flake = {
        # The usual flake attributes can be defined here, including system-
        # agnostic ones like nixosModule and system-enumerating ones, although
        # those are more easily expressed in perSystem.
      };
    };
}
