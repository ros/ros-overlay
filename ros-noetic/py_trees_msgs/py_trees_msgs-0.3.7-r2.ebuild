# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Messages used by py_trees_ros and some extras for the mock demos/tests."
HOMEPAGE="http://ros.org/wiki/py_trees_msgs"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/noetic/${PN}/0.3.7-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib_msgs
	ros-noetic/dynamic_reconfigure
	ros-noetic/message_runtime
	ros-noetic/std_msgs
	ros-noetic/uuid_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
