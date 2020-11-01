{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let electron = pkgs.electron_12; in
# let electron = callPackage ./electron.nix {}; in
stdenv.mkDerivation rec {
    name = "vieb";
    buildInputs = [ electron nodejs_latest ];
    shellHook = ''
        export ELECTRON_SKIP_BINARY_DOWNLOAD=1
    '';
}
