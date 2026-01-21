include(FindPackageHandleStandardArgs)

if(LOONGARCH64)

    set(CHECK_LASX_CODE "
        #include <lasxintrin.h>
        int main(int argc, char **argv) {
            __m256i x = __m256i{
                static_cast<long long>(0x1122334455667788ULL),
                static_cast<long long>(0x99aabbccddeeff00ULL),
                static_cast<long long>(0xabcdef1212341234ULL),
                static_cast<long long>(0xaabbaabbddeeddeeULL)
            };
            return 0; }")

    set(CMAKE_REQUIRED_FLAGS ${CMAKE_CXX_FLAGS})

    check_cxx_source_compiles("${CHECK_LASX_CODE}" SUPPORTS_LASX)

endif()
