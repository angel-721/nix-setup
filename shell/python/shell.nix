let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
  packages = [
    pkgs.pyright #lsp
    (pkgs.python3.withPackages (python-pkgs: [
      python-pkgs.pip
    ]))
  ];

  shellHook = ''
    echo "You have entered the Python environment."

    # Change the shell prompt to display "python"
    export PS1="\[\e[0;32m\]python\[\e[0m\] \W \$ "
  '';
}
