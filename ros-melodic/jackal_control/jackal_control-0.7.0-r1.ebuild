# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Controllers for Jackal"
HOMEPAGE="http://wiki.ros.org/jackal_control"
SRC_URI="https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/${PN}/0.7.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/controller_manager
	ros-melodic/diff_drive_controller
	ros-melodic/interactive_marker_twist_server
	ros-melodic/joint_state_controller
	ros-melodic/joy
	ros-melodic/robot_localization
	ros-melodic/teleop_twist_joy
	ros-melodic/topic_tools
	ros-melodic/twist_mux
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
