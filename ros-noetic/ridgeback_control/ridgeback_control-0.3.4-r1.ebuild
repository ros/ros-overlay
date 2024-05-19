# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Controllers for Ridgeback"
HOMEPAGE="http://wiki.ros.org/ridgeback_control"
SRC_URI="https://github.com/clearpath-gbp/ridgeback-release/archive/release/noetic/${PN}/0.3.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/controller_interface
	ros-noetic/controller_manager
	ros-noetic/interactive_marker_twist_server
	ros-noetic/joint_state_controller
	ros-noetic/joy
	ros-noetic/nav_msgs
	ros-noetic/realtime_tools
	ros-noetic/robot_localization
	ros-noetic/teleop_twist_joy
	ros-noetic/tf
	ros-noetic/topic_tools
	ros-noetic/twist_mux
	ros-noetic/urdf
	test? ( ros-noetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
