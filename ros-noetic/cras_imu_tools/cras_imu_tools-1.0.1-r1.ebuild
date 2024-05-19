# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.fel.cvut.cz/cras/ros-release/${PN}/-/archive/release/noetic/${PN}/1.0.1-1/archive.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cras_cpp_common
	ros-noetic/geometry_msgs
	ros-noetic/nav_msgs
	ros-noetic/nodelet
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/topic_tools
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
