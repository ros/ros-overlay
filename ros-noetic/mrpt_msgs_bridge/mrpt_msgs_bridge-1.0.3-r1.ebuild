# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="C++ library to convert between custom mrpt_msgs messages and native MRPT cl[...]"
HOMEPAGE="https://www.mrpt.org/"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/${PN}/1.0.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/marker_msgs
	ros-noetic/mrpt2
	ros-noetic/mrpt_msgs
	ros-noetic/roscpp
	ros-noetic/tf2
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/ros_environment
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
