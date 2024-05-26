{ stdenv, fetchFromGitHub, slstatus }:

stdenv.mkDerivation rec {
  name = "slstatus-custom";
  src = /home/angel/.config/slstatus; # Path to your local slstatus configuration

  nativeBuildInputs = [ slstatus ];

  installPhase = ''
    mkdir -p $out/bin
    cp slstatus $out/bin/slstatus
  '';

  meta = with stdenv.lib; {
    description = "Custom build of slstatus";
    homepage = "https://tools.suckless.org/slstatus/";
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
