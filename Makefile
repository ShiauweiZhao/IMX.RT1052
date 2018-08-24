Sdram_txt_debug:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=sdram_txt_debug && make -j4
Sdram_txt_release:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=sdram_txt_release && make -j4
Debug:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=debug && make -j4
Release:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=release && make -j4
Sdram_debug:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=sdram_debug && make -j4
Sdram_release:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=sdram_release && make -j4
Flexspi_nor_debug:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=flexspi_nor_debug && make -j4
Flexspi_nor_release:
	@mkdir -p build
	@cd build && cmake .. -DCMAKE_TOOLCHAIN_FILE="armgcc.cmake" -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=flexspi_nor_release && make -j4


.PHONY: clean all

clean:
	rm -rf build

all:
	make Sdram_txt_debug
	make Sdram_txt_release
	make Debug
	make Release
	make Sdram_debug
	make Sdram_release
	make Flexspi_nor_debug
	make Flexspi_nor_release