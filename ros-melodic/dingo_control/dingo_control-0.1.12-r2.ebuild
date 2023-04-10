# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Controllers for Dingo"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/dingo-release/archive/release/melodic/${PN}/0.1.12-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/controller_manager
	ros-melodic/diff_drive_controller
	ros-melodic/interactive_marker_twist_server
	ros-melodic/joint_state_controller
	ros-melodic/joy
	ros-melodic/ridgeback_control
	ros-melodic/robot_localization
	ros-melodic/teleop_twist_joy
	ros-melodic/topic_tools
	ros-melodic/twist_mux
	test? ( ros-melodic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
