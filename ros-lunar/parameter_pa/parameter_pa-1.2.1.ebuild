# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ProAut parameter package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/peterweissig/ros_parameter-release/archive/release/lunar/${PN}/1.2.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/cmake_modules
	ros-lunar/message_runtime
	ros-lunar/roscpp
	ros-lunar/roslib
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
