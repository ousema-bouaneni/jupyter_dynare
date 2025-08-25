#!/bin/bash

# Print each line of the script as it is executed and stop on first non-zero exit status
set -ex

# Build and install Slicot
cd dynare/slicot
make -f makefile_Unix FORTRAN=$FC OPTS="-O2 -fPIC" LOADER=$FC lib
# Necessary for Dynare's meson.build to detect the library
cp slicot.a $PREFIX/lib/libslicot_pic.a
cd ..


export BOOST_ROOT=$PREFIX

# Patch matio.pc to remove hdf5 dependency since it's hardcoded into our recipe
sed -i -E 's/(hdf5 >= [^ ]*)( ?)//g' $PREFIX/lib/pkgconfig/matio.pc

# Build and install Dynare (Octave version)
meson setup -Dbuild_for=octave $MESON_ARGS build-octave \
    -Dc_link_args="-pthread" -Dcpp_link_args="-pthread"
meson compile -C build-octave
meson install -C build-octave

# Install Octave statistics package (Dynare dependency)
octave -e "pkg install -forge statistics"
