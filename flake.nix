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

          # Only add Linux-only packages (pciutils + nvidia-utils)
          # This fixes the evaluation error on macOS
          runtimeInputs = lib.optionals pkgs.stdenv.isLinux [
            pkgs.pciutils      # required for GPU detection
            pkgs.nvidia-utils  # nice for NVIDIA usage
          ];

          text = builtins.readFile ./synfetch;
        };
      };
    };
}
