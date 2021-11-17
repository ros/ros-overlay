# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Bringup for freight"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/noetic/${PN}/0.9.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Proprietary"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_aggregator
	ros-noetic/fetch_description
	ros-noetic/fetch_drivers
	ros-noetic/fetch_navigation
	ros-noetic/fetch_open_auto_dock
	ros-noetic/fetch_teleop
	ros-noetic/graft
	ros-noetic/joy
	ros-noetic/robot_state_publisher
	ros-noetic/sick_tim
	ros-noetic/sound_play
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
