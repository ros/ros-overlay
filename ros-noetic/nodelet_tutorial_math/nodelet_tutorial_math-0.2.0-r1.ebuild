# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="Package for Nodelet tutorial."
HOMEPAGE="http://www.ros.org/wiki/nodelet_tutorial_math"
SRC_URI="https://github.com/ros-gbp/common_tutorials-release/archive/release/noetic/${PN}/0.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
