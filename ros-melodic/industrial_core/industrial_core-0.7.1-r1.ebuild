# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS-Industrial core stack contains packages and libraries for supporing ind[...]"
HOMEPAGE="http://ros.org/wiki/industrial_core"
SRC_URI="https://github.com/ros-industrial-release/${PN}-release/archive/release/melodic/${PN}/0.7.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/industrial_deprecated
	ros-melodic/industrial_msgs
	ros-melodic/industrial_robot_client
	ros-melodic/industrial_robot_simulator
	ros-melodic/industrial_trajectory_filters
	ros-melodic/industrial_utils
	ros-melodic/simple_message
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
