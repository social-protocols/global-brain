{

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    # for `flake-utils.lib.eachDefaultSystem`
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ ];
          config = {
            allowUnfree = false;
            packageOverrides = super: let self = super.pkgs; in
            {
              rEnv = super.rWrapper.override {
                packages = with self.rPackages; [
                  rmarkdown
                  yaml
                  bookdown
                  base64enc
                  dplyr
                  tidyr
                  ggplot2
                ];
              };
            };
          };
        };
        defaultBuildInputs = with pkgs; [
          entr
          just
          git
          pandoc
          rEnv
          texlive.combined.scheme-full
        ];
      in
      {
        devShells.default = with pkgs; pkgs.mkShellNoCC {
          name = "dev-shell";
          buildInputs = defaultBuildInputs;
        };
        packages.default = with pkgs; pkgs.mkShellNoCC {
          name = "pack";
          buildInputs = defaultBuildInputs;
        };
      }
    );
}
