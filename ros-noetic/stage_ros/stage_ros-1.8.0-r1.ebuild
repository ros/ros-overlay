# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides ROS specific hooks for stage"
HOMEPAGE="http://ros.org/wiki/stage_ros"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/1.8.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/stage
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
