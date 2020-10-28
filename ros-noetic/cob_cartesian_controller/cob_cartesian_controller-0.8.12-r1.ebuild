# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides nodes that broadcast tf-frames along various \(model-[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/noetic/${PN}/0.8.12-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/cob_frame_tracker
	ros-noetic/cob_script_server
	ros-noetic/cob_srvs
	ros-noetic/cob_twist_controller
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/robot_state_publisher
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/rviz
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf
	ros-noetic/topic_tools
	ros-noetic/visualization_msgs
	ros-noetic/xacro
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/roslint
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
