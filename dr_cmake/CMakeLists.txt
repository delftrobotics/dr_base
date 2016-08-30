cmake_minimum_required(VERSION 3.1.0)
project(dr_cmake)
find_package(catkin REQUIRED)
catkin_package(CFG_EXTRAS dr_cmake.cmake)

install(
	DIRECTORY cmake/modules
	DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/cmake
)
