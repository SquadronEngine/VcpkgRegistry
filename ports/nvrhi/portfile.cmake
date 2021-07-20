vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO NVIDIAGameWorks/nvrhi
  REF 33392c81dedb7dd59069eb8d694ace8c9129eda9
  SHA512 d15be2d1d2e389c2a6df92723e440674da2cad8ceae786ceec3258e8daff696bec5d948844d65afd4e408ed9d1bf27e75689c9424af47424f342e5b3367c29b6
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)