# OpenFace build notes & bash commands
# Sean Hendryx

# Reference: https://github.com/TadasBaltrusaitis/OpenFace/wiki
# https://github.com/TadasBaltrusaitis/OpenFace/wiki/Unix-Installation
# https://github.com/TadasBaltrusaitis/OpenFace/wiki/Mac-Installation

# install dependencies with homebrew:
# Note that my machine may have already had other dependencies installed
brew install boost tbb opencv3
#Not listed, but also need:
brew install webp
#See issue on github: https://github.com/TadasBaltrusaitis/OpenFace/issues/26

# cd to directory on your machine where you want to build software
cd /your/path/here
git clone https://github.com/TadasBaltrusaitis/OpenFace.git

#Create an out-of-source build directory to store the compiled artifacts:
cd /Users/seanhendryx/githublocal/OpenFace
mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE . /Users/seanhendryx/githublocal/OpenFace
make

cd /Users/seanhendryx/githublocal/OpenFace/build/bin

#Test on webcam:
bin/FaceLandmarkVid
