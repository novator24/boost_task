SET (BoostThread_INCLUDE_SEARCH /usr/include /usr/local/include)
SET (BoostThread_LIBRARIES_SEARCH /usr/lib /usr/local/lib)
FIND_PATH (BoostThread_INCLUDE_DIRS boost/thread.hpp PATHS ${BoostThread_INCLUDE_SEARCH} PATH_SUFFIXES boost)
FIND_LIBRARY (BoostThread_LIBRARIES boost_thread-mt PATHS ${BoostThread_LIBRARIES_SEARCH} PATH_SUFFIXES boost)
MESSAGE(STATUS "BoostThread INCLUDE DIRS = ${BoostThread_INCLUDE_DIRS}")
MESSAGE(STATUS "BoostThread LIBRARIES = ${BoostThread_LIBRARIES}")

INCLUDE (FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS (boost_thread DEFAULT_MSG BoostThread_LIBRARIES BoostThread_INCLUDE_DIRS)
