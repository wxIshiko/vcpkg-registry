vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO wxIshiko/wxCharts
    REF 0.1.0
    SHA512 5d0bde636afbe2ef1817c47a2c4bf63ac32ff9ad0ecca8cf006e084db910630510da24349a6a6808cb6a2f0c4791859ec2adee3df7b894b4ea96962beb7f9e84
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_cmake_config_fixup(CONFIG_PATH "lib/cmake/${PORT}")

file(INSTALL "${SOURCE_PATH}/LICENSE.txt" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
