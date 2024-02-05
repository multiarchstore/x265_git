include(FindPackageHandleStandardArgs)

if(LOONGARCH64)

    set(CMAKE_REQUIRED_FLAGS "${CMAKE_REQUIRED_FLAGS} -mlasx")

    set(CHECK_LASX_CODE "
        #ifndef __loongarch_asx
        #error Assembler CPP flag not enabled
        #endif
        int main(int argc, char **argv) {
            __asm__ volatile (
               \"xvadd.w $xr0, $xr1, $xr1\"
            );
           return 0; }")

    check_cxx_source_compiles("${CHECK_LASX_CODE}" SUPPORTS_LASX)

endif()
