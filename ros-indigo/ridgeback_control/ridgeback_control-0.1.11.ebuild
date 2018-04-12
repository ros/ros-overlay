# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Controllers for Ridgeback"
HOMEPAGE="http://wiki.ros.org/ridgeback_control"
SRC_URI="https://github.com/clearpath-gbp/ridgeback-release/archive/release/indigo/${PN}/0.1.11-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/controller_interface
	ros-indigo/controller_manager
	ros-indigo/interactive_marker_twist_server
	ros-indigo/joint_state_controller
	ros-indigo/joy
	ros-indigo/nav_msgs
	ros-indigo/realtime_tools
	ros-indigo/robot_localization
	ros-indigo/teleop_twist_joy
	ros-indigo/tf
	ros-indigo/topic_tools
	ros-indigo/urdf
	test? ( ros-indigo/roslaunch )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
