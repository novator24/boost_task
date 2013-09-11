SET (BoostSystem_INCLUDE_SEARCH /usr/include /usr/local/include)
SET (BoostSystem_LIBRARIES_SEARCH /usr/lib /usr/local/lib)
FIND_PATH (BoostSystem_INCLUDE_DIRS boost/system/config.hpp PATHS ${BoostSystem_INCLUDE_SEARCH} PATH_SUFFIXES boost)
FIND_LIBRARY (BoostSystem_LIBRARIES boost_system PATHS ${BoostSystem_LIBRARIES_SEARCH} PATH_SUFFIXES boost)
MESSAGE(STATUS "BoostSystem INCLUDE DIRS = ${BoostSystem_INCLUDE_DIRS}")
MESSAGE(STATUS "BoostSystem LIBRARIES = ${BoostSystem_LIBRARIES}")

INCLUDE (FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS (boost_system DEFAULT_MSG BoostSystem_LIBRARIES BoostSystem_INCLUDE_DIRS)
