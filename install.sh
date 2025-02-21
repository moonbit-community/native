set -e
cd .mooncakes/illusory0x0/native/
bash ./build.sh
cd ../../..

mkdir lib || true
cp .mooncakes/illusory0x0/native/build/libnative.mbt.a  ./lib/