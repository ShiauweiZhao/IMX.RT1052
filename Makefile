Sdram_txt_debug:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=sdram_txt_debug && make
Sdram_txt_release:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=sdram_txt_release && make
Debug:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=debug && make
Release:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=release && make
Sdram_debug:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=sdram_debug && make
Sdram_release:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=sdram_release && make
Flexspi_nor_debug:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=flexspi_nor_debug && make
Flexspi_nor_release:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=flexspi_nor_release && make


.PHONY: clean

clean:
	rm -rf build