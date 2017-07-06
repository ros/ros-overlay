# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'ROS-Industrial core stack contains packages and libraries for supporing industri'"
HOMEPAGE="http://ros.org/wiki/industrial_core"
SRC_URI="https://github.com/ros-industrial-release/industrial_core-release/archive/release/indigo/industrial_core/0.4.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/industrial_deprecated
	ros-indigo/industrial_msgs
	ros-indigo/industrial_robot_client
	ros-indigo/industrial_robot_simulator
	ros-indigo/industrial_trajectory_filters
	ros-indigo/industrial_utils
	ros-indigo/simple_message
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

