# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Rosbridge provides a JSON API to ROS functionality for non-ROS programs.\
 [...]"
HOMEPAGE="http://ros.org/wiki/rosbridge_suite"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/1.3.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/rosapi
	ros-humble/rosbridge_library
	ros-humble/rosbridge_server
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_core
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
