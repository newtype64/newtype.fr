{ pkgs ? import <nixpkgs> { }, ghc ? pkgs.ghc }:
pkgs.haskell.lib.buildStackProject {
  name = "newtype.fr";
  inherit ghc;
  buildInputs = with pkgs; [ zlib ];
  LANG = "en_US.UTF-8";
  TMPDIR = "/tmp";
}
