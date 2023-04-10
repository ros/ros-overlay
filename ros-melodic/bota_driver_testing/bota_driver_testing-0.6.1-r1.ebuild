# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/${PN}/0.6.1-1 -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/bota_node
	ros-melodic/geometry_msgs
	ros-melodic/rokubimini
	ros-melodic/rokubimini_bus_manager
	ros-melodic/rokubimini_ethercat
	ros-melodic/rokubimini_msgs
	ros-melodic/rokubimini_serial
	ros-melodic/rosgraph_msgs
	ros-melodic/rostest
	test? ( ros-melodic/rosunit )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
