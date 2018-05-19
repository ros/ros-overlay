# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The package provides implementation of several 2D laser-based simultaneous\[...]"
HOMEPAGE="https://github.com/OSLL/slam-constructor"
SRC_URI="https://github.com/OSLL/${PN}-release/archive/release/kinetic/${PN}/0.9.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/message_filters
	ros-kinetic/nav_msgs
	ros-kinetic/rosbag_storage
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
