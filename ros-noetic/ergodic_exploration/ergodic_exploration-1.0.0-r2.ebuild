# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Robot agnostic information theoretic exploration strategy"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/bostoncleek/${PN}-release/archive/release/noetic/${PN}/1.0.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/map_server
	ros-noetic/roscpp
	ros-noetic/rviz
	ros-noetic/tf2_ros
	test? ( ros-noetic/rosunit )
	sci-libs/armadillo
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/geometry_msgs
	ros-noetic/nav_msgs
	ros-noetic/sensor_msgs
	ros-noetic/tf2
	ros-noetic/visualization_msgs
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
