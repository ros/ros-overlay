# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Use Google Chat API clients via ROS"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/${PN}/2.1.28-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib_msgs
	ros-noetic/dialogflow_task_executive
	ros-noetic/gdrive_ros
	ros-noetic/message_runtime
	ros-noetic/rospy
	ros-noetic/std_msgs
	test? ( ros-noetic/catkin_virtualenv )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/catkin_virtualenv
	ros-noetic/message_generation
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
