<img src="https://upload.wikimedia.org/wikipedia/commons/3/32/OpenCV_Logo_with_text_svg_version.svg" alt="OpenCV Logo" width="300"/>

# 🐱 **OpenCV 2.4.13 Prebuilt Binaries** 🐱

Welcome to the OpenCV 2.4.13 prebuilt binaries repository!
This release was built on **Linux Mint 17.3** as part of a project named **"Caixa-e-Agua"**. 🏗️

---

## 🛠 **How to Install** 🛠

### **Automatic Installation** ⚙️

1. Clone the repository:
   ```
   git clone https://github.com/pandahiro/opencv-2.4.13.git
   ```
   
2. Navigate into the directory:
   ```
   cd opencv-2.4.13
   ```

3. **Run the installation script:**
   ```
   ./install.sh
   ```

4. Enter your password when prompted.
5. Congratulations! 🎉 OpenCV has installed successfully.

---

### **Manual Installation** 🛠️

For those who prefer to do it step by step:

1. Navigate to the folder containing the split zip files:  
   **`opencv-split`** 📁
   
2. Run the command to combine the split zip files into a single archive:
   ```
   cat "OpenCV 2.4.13 | Part*" > Release-2.4.13.zip
   ```

3. Remove the unnecessary split files to clean up the directory:
   ```
   rm OpenCV*
   ```

4. Extract the archive:
   ```
   unzip Release-2.4.13.zip
   ```

5. Change to the release directory:
   ```
   cd release
   ```

6. Run the following to install the build:
   ```
   sudo make install
   ```

7. Done! 🎉 Your OpenCV setup is complete.

## 🚧 **Warning** 🚧

This repository contains prebuilt binaries, built by Hiro, and only the installation script is maintained. For up-to-date binaries and support, please refer to the [official OpenCV repository](https://github.com/opencv/opencv). All further developments and updates are handled by the official maintainers.
