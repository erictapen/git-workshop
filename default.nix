with import <nixpkgs> {};
#{pkgs, stdenv, buildEnv, ...}:

stdenv.mkDerivation rec {
  name = "git-workshop";
  version = "0.0.1-SNAPSHOT";

  src = ./.;
  
  buildInputs = with pkgs; [
    graphviz
    sent
  ];

  buildPhase = ''
    mkdir -p $out
    dot -Tpng test.dot > $out/bla.png
  '';

  installPhase = ''
    echo install
  '';
}
