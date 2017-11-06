# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides nodes that broadcast tf-frames along various \(model-based\)"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/indigo/cob_cartesian_controller/0.6.15-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/cob_frame_tracker
	ros-indigo/cob_srvs
	ros-indigo/cob_twist_controller
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/robot_state_publisher
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/rviz
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
	ros-indigo/topic_tools
	ros-indigo/visualization_msgs
	ros-indigo/xacro
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/roslint
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

