# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides nodes that broadcast tf-frames along various \(model-[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/melodic/${PN}/0.8.11-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/cob_frame_tracker
	ros-melodic/cob_script_server
	ros-melodic/cob_srvs
	ros-melodic/cob_twist_controller
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/robot_state_publisher
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/rviz
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	ros-melodic/topic_tools
	ros-melodic/visualization_msgs
	ros-melodic/xacro
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
