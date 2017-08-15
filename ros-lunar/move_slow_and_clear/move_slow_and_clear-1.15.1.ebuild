# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="move_slow_and_clear"
HOMEPAGE="http://wiki.ros.org/move_slow_and_clear"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/lunar/move_slow_and_clear/1.15.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/costmap_2d
	ros-lunar/geometry_msgs
	ros-lunar/nav_core
	ros-lunar/pluginlib
	ros-lunar/roscpp
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

