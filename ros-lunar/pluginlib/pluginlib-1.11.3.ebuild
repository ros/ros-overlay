# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The pluginlib package provides tools for writing and dynamically loading pl[...]"
HOMEPAGE="http://www.ros.org/wiki/pluginlib"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/1.11.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/class_loader
	ros-lunar/rosconsole
	ros-lunar/roslib
	dev-libs/boost
	dev-libs/tinyxml2
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
