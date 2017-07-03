# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="The pluginlib package provides tools for writing and dynamically loading plugins"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/pluginlib-release/archive/release/lunar/pluginlib/1.10.5-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/class_loader
	ros-lunar/rosconsole
	ros-lunar/roslib
	dev-libs/boost
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

