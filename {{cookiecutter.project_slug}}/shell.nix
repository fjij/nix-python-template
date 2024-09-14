{pkgs, ...}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    (python3.withPackages (import ./python-deps.nix))
    # formatters
    alejandra
    python3Packages.black
    # needed for pyright LSP
    nodejs_22
  ];
}
