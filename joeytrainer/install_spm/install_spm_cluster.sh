git clone https://github.com/google/sentencepiece.git 
cd sentencepiece
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=<PATH_TO_ENV>
make -j $(nproc)
make install
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:<PATH_TO_ENV>/lib"