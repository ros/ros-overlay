# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.uni-koblenz.de/robbie/homer_mapping/repository/archive.tar.gz?ref=release/kinetic/homer_map_manager/0.1.17-1 -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/homer_mapnav_msgs
	ros-kinetic/homer_nav_libs
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/std_srvs
	ros-kinetic/tf
	dev-cpp/eigen
	media-libs/libsdl
	media-libs/sdl-image
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

