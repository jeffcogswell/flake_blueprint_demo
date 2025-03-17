{ pkgs }:
pkgs.mkShell {
  # Add build dependencies
  packages = [
    pkgs.nodejs_23
    pkgs.geany
    pkgs.nodePackages."@angular/cli"
  ];

  # Add environment variables
  env = { };

  # Load custom bash code
  shellHook = ''
    export PS1="(frontend) $PS1"
  '';
}
