# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The mongodb_store_msgs package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/strands-project-releases/mongodb_store/archive/release/noetic/${PN}/0.6.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/message_generation
	ros-noetic/message_runtime
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
