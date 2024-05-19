# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Python binding tools for C++"
HOMEPAGE="http://wiki.ros.org/py_binding_tools"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/1.0.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/roscpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/pybind11_catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
