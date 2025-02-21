export MOON_HOME="$HOME/.moon"
mkdir build || true
cd build
cmake ../stub
cmake --build .
cd ..