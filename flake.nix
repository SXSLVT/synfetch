{
  description = "synfetch - Synthwave system fetch tool";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];

      perSystem = { pkgs, lib, ... }: {
        packages.default = pkgs.writeShellApplication {
          name = "synfetch";
          
          runtimeInputs = [
            pkgs.coreutils
            pkgs.ncurses   
          ] ++ lib.optionals pkgs.stdenv.isLinux [
            pkgs.pciutils 
            pkgs.procps   
          ];

          checkPhase = "";

          text = builtins.readFile ./synfetch;
        };
      };
    };
}
