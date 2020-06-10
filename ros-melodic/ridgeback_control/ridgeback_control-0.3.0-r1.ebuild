# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Controllers for Ridgeback"
HOMEPAGE="http://wiki.ros.org/ridgeback_control"
SRC_URI="https://github.com/clearpath-gbp/ridgeback-release/archive/release/melodic/${PN}/0.3.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/controller_interface
	ros-melodic/controller_manager
	ros-melodic/interactive_marker_twist_server
	ros-melodic/joint_state_controller
	ros-melodic/joy
	ros-melodic/nav_msgs
	ros-melodic/realtime_tools
	ros-melodic/robot_localization
	ros-melodic/teleop_twist_joy
	ros-melodic/tf
	ros-melodic/topic_tools
	ros-melodic/urdf
	test? ( ros-melodic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
