{ electron_11, fetchurl }:

let
    tag = "linux-x64";
    vers = "11.1.0";
    hash = "64f9c0864a12a9e0a435b967ed63209a9bb447456aafe8660edaaa2f6517c538";
in
electron_11.overrideDerivation (_: {
    src = fetchurl {
        url = "https://github.com/electron/electron/releases/download/v${vers}/electron-v${vers}-${tag}.zip";
        sha256 = hash;
    };
})
