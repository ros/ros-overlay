# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides nodes that broadcast tf-frames along various \(model-[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/kinetic/${PN}/0.7.9-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/cob_frame_tracker
	ros-kinetic/cob_srvs
	ros-kinetic/cob_twist_controller
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/rviz
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
	ros-kinetic/topic_tools
	ros-kinetic/visualization_msgs
	ros-kinetic/xacro
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
