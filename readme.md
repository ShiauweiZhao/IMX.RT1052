##RT1052
set ```ARMGCC_DIR``` to  your gcc path
in Clion Cmake to set Cmake options
```
cmake -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=sdram_debug  .
```