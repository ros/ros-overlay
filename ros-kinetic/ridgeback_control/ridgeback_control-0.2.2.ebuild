# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Controllers for Ridgeback"
HOMEPAGE="http://wiki.ros.org/ridgeback_control"
SRC_URI="https://github.com/clearpath-gbp/ridgeback-release/archive/release/kinetic/${PN}/0.2.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/controller_interface
	ros-kinetic/controller_manager
	ros-kinetic/interactive_marker_twist_server
	ros-kinetic/joint_state_controller
	ros-kinetic/joy
	ros-kinetic/nav_msgs
	ros-kinetic/realtime_tools
	ros-kinetic/robot_localization
	ros-kinetic/teleop_twist_joy
	ros-kinetic/tf
	ros-kinetic/topic_tools
	ros-kinetic/urdf
	test? ( ros-kinetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
