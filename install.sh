set -e
cd .mooncakes/illusory0x0/native/
export MOON_HOME="$HOME/.moon"
mkdir build || true
cd build
cmake ../stub
cmake --build .
cd ../../../..

mkdir lib || true
cp .mooncakes/illusory0x0/native/build/libnative.mbt.a  ./lib/