find_path(LIBUSB_INCLUDE_DIR NAMES libusb.h PATHS ${CONAN_INCLUDE_DIRS_LIBUSB}/libusb-1.0 NO_CMAKE_FIND_ROOT_PATH)
find_library(LIBUSB_LIBRARY NAMES ${CONAN_LIBS_LIBUSB} PATHS ${CONAN_LIB_DIRS_LIBUSB} NO_CMAKE_FIND_ROOT_PATH)
find_path(PKG_CONFIG_PATH NAME pkgconfig ${CONAN_LIB_DIRS_LIBUSB}/pkgconfig NO_CMAKE_FIND_ROOT_PATH)

MESSAGE("** LIBUSB ALREADY FOUND BY CONAN!")
SET(LIBUSB_FOUND TRUE)
MESSAGE("** FOUND LIBUSB:  ${LIBUSB_LIBRARY}")
MESSAGE("** FOUND LIBUSB INCLUDE:  ${LIBUSB_INCLUDE_DIR}")

set(LIBUSB_INCLUDE_DIRS ${LIBUSB_INCLUDE_DIR})
set(LIBUSB_LIBRARIES ${LIBUSB_LIBRARY})

mark_as_advanced(LIBUSB_LIBRARY LIBUSB_INCLUDE_DIR)

set(LIBUSB_MAJOR_VERSION "1")
set(LIBUSB_MINOR_VERSION "0")
set(LIBUSB_PATCH_VERSION "21")
