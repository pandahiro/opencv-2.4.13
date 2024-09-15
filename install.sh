#!/bin/bash

# Installer script for OpenCV 2.4.13

# Print info
echo "Starting OpenCV 2.4.13 Installation..."
echo "Navigating to the directory containing split zip files..."

# Navigate to the directory with split zip files
cd opencv-split || { echo "Directory opencv-split not found. Exiting."; exit 1; }

# Combine split zip files into one archive
echo "Combining split zip files into Release-2.4.13.zip..."
cat "OpenCV 2.4.13 | Part*" > Release-2.4.13.zip
if [ $? -ne 0 ]; then
    echo "Error combining zip files. Exiting."
    exit 1
fi

# Unzip the combined archive
echo "Unzipping Release-2.4.13.zip..."
unzip Release-2.4.13.zip
if [ $? -ne 0 ]; then
    echo "Error unzipping the file. Exiting."
    exit 1
fi

# Navigate to the release directory
cd release || { echo "Directory release not found. Exiting."; exit 1; }

# Install OpenCV
echo "Starting the installation process..."
export OPENCV_DIR=$PWD
export LD_LIBRARY_PATH=$PWD/lib:$LD_LIBRARY_PATH
export CPLUS_INCLUDE_PATH=$PWD/include:$CPLUS_INCLUDE_PATH
if [ $? -ne 0 ]; then
    echo "Error during installation. Exiting."
    exit 1
fi

# Print success message
echo "OpenCV 2.4.13 has been successfully installed!"

# End of script
