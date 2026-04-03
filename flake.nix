{
  description = "Synfetch flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      perSystem = {pkgs, ...}: {
        packages.default = pkgs.writeShellApplication {
          name = "synfetch";
          excludeShellChecks = ["SC2034" "SC2155" "SC2012" "SC2086" "SC1091" "SC2005" "SC2126"];
          text = builtins.readFile ./synfetch;
        };
      };
    };
}
