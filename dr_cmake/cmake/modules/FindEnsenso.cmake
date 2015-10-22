include(FindPkgConfig)

find_path(Ensenso_INCLUDE_DIR
	NAMES nxLib.h
	PATHS
		/opt/ensenso/include
	DOC "The Ensenso include directories."
)

find_library(
	Ensenso_LIBRARY
	NAMES NxLib64
	PATHS
		/opt/ensenso/lib
	DOC "The Ensenso libraries."
)

set(Ensenso_INCLUDE_DIRS ${Ensenso_INCLUDE_DIR})
set(Ensenso_LIBRARIES    ${Ensenso_LIBRARY})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Ensenso
	FOUND_VAR Ensenso_FOUND
	REQUIRED_VARS Ensenso_LIBRARIES Ensenso_INCLUDE_DIRS
)

mark_as_advanced(Ensenso_FOUND)
