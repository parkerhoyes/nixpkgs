{ lib, stdenv, fetchurl, ncurses }:

stdenv.mkDerivation rec {
  pname = "libedit";
  version = "20230828-3.1";

  src = fetchurl {
    url = "https://thrysoee.dk/editline/${pname}-${version}.tar.gz";
    sha256 = "sha256-TugYK25WkpDn0fRPD3jayHFrNfZWt2Uo9pnGnJiBTa0=";
  };

  outputs = [ "out" "dev" ];

  # Have `configure' avoid `/usr/bin/nroff' in non-chroot builds.
  # NROFF = "${groff}/bin/nroff";

  # GCC automatically include `stdc-predefs.h` while Clang does not do
  # this by default. While Musl is ISO 10646 compliant, doesn't define
  # __STDC_ISO_10646__. This definition is in `stdc-predefs.h` that's
  # why libedit builds just fine with GCC and Musl.
  # There is a DR to fix this issue with Clang which is not merged
  # yet.
  # https://reviews.llvm.org/D137043
  NIX_CFLAGS_COMPILE = lib.optional
    (stdenv.targetPlatform.isMusl && stdenv.cc.isClang)
    "-D__STDC_ISO_10646__=201103L";

  patches = [ ./01-cygwin.patch ];

  propagatedBuildInputs = [ ncurses ];

  postInstall = ''
    find $out/lib -type f | grep '\.\(la\|pc\)''$' | xargs sed -i \
      -e 's,-lncurses[a-z]*,-L${ncurses.out}/lib -lncursesw,g'
  '';

  meta = with lib; {
    homepage = "http://www.thrysoee.dk/editline/";
    description = "A port of the NetBSD Editline library (libedit)";
    license = licenses.bsd3;
    platforms = platforms.all;
  };
}
