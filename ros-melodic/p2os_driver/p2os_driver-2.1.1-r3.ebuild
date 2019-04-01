# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Driver file descriptions for P2OS/ARCOS robot"
HOMEPAGE="http://ros.org/wiki/p2os_driver"
SRC_URI="https://github.com/allenh1/p2os-release/archive/release/melodic/${PN}/2.1.1-3.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_updater
	ros-melodic/geometry_msgs
	ros-melodic/kdl_parser
	ros-melodic/message_runtime
	ros-melodic/nav_msgs
	ros-melodic/p2os_msgs
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
