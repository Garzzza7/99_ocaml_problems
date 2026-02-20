with import <nixpkgs> { };

stdenv.mkDerivation rec {
  name = "99_ocaml_problems";
  buildInputs = [
    ocaml
    ocamlPackages.ocaml-lsp
    ocamlPackages.ocamlformat

    gnumake
  ];
}
