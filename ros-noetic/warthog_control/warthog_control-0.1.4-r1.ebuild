# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Controllers for Warthog"
HOMEPAGE="http://www.clearpathrobotics.com/"
SRC_URI="https://github.com/clearpath-gbp/warthog-release/archive/release/noetic/${PN}/0.1.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_manager
	ros-noetic/diff_drive_controller
	ros-noetic/interactive_marker_twist_server
	ros-noetic/joint_state_controller
	ros-noetic/joy
	ros-noetic/robot_localization
	ros-noetic/teleop_twist_joy
	ros-noetic/topic_tools
	ros-noetic/twist_mux
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslaunch
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
