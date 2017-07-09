# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="move_slow_and_clear"
HOMEPAGE="http://wiki.ros.org/move_slow_and_clear"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/indigo/move_slow_and_clear/1.12.13-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/costmap_2d
	ros-indigo/geometry_msgs
	ros-indigo/nav_core
	ros-indigo/pluginlib
	ros-indigo/roscpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

