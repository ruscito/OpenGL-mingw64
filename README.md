
## OpenGL Setup

[link](https://learnopengl.com/Getting-started/Creating-a-window) for details 

## Steps

1. Download and isnstal CMAKE Gui
2. Clone from https://github.com/glfw/glfw
3. Run CMAKE to generate the library
    * Select mingw64 when creating the configuration
    * Select source code folder and binaries folder
    * Select destination folder for CMAKE_INSTALL_PREFIX to match clone location
    * Generate Makefile
4. Navigate to the binaries folder and run mingw32-make 
5. run mingw32-make install
6. Copy generated "libglfw3.a" lib in the mingw64 lib folder  
    C:\Program Files (x86)\mingw-w64\i686-8.1.0-posix-dwarf-rt_v6-rev0\mingw32\i686-w64-mingw32\lib
7. Copy include folder "GLFW" and all the content in the mingw64 include folder
    C:\Program Files (x86)\mingw-w64\i686-8.1.0-posix-dwarf-rt_v6-rev0\mingw32\i686-w64-mingw32\include
8. Setup GLAD following the [link](https://learnopengl.com/Getting-started/Creating-a-window) for details 
9. Run mingw32-make from visual code

## License

[MIT](https://choosealicense.com/licenses/mit/)