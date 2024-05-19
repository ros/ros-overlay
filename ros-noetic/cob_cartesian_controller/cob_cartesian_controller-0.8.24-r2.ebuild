# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package provides nodes that broadcast tf-frames along various \(model-[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/4am-robotics/cob_control-release/archive/release/noetic/${PN}/0.8.24-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

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
