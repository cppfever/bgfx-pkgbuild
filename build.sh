git clone https://github.com/bkaradzic/bgfx.cmake.git
cd bgfx.cmake
git checkout v1.115.7933-417f8b8
git submodule init
git submodule update

mkdir ../build
mkdir ../install
cd ../build

cmake ../bgfx.cmake -DBGFX_BUILD_TOOLS=OFF -DBGFX_BUILD_EXAMPLES=OFF -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../install -G"Ninja"
cmake --build .
cmake --install . --strip


