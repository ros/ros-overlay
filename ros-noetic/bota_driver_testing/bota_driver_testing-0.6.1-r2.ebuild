# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/${PN}/0.6.1-2/archive.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/bota_node
	ros-noetic/geometry_msgs
	ros-noetic/rokubimini
	ros-noetic/rokubimini_bus_manager
	ros-noetic/rokubimini_ethercat
	ros-noetic/rokubimini_msgs
	ros-noetic/rokubimini_serial
	ros-noetic/rosgraph_msgs
	ros-noetic/rostest
	test? ( ros-noetic/rosunit )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
