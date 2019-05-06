# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Bringup for freight"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/melodic/${PN}/0.8.6-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Proprietary"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_aggregator
	ros-melodic/fetch_description
	ros-melodic/fetch_drivers
	ros-melodic/fetch_navigation
	ros-melodic/fetch_open_auto_dock
	ros-melodic/fetch_teleop
	ros-melodic/graft
	ros-melodic/joy
	ros-melodic/ps3joy
	ros-melodic/robot_state_publisher
	ros-melodic/sick_tim
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
