let
  pinned =
    import (builtins.fetchTarball {
      name = "nixos-19.09";
      url = https://github.com/nixos/nixpkgs/archive/d5291756487d70bc336e33512a9baf9fa1788faf.tar.gz;
      sha256 = "0mhqhq21y5vrr1f30qd2bvydv4bbbslvyzclhw0kdxmkgg3z4c92";
    }) {};

in
  with pinned;

  mkShell {
    buildInputs = [
      ruby
    ];
    preConfigure = ''
      export LANG=en_US.UTF-8
    '';
    shellHook = ''
      export LC_ALL=C.UTF-8
    '';
  }