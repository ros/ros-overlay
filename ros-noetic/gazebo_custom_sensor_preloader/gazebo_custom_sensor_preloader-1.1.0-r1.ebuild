# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.fel.cvut.cz/cras/ros-release/${PN}/-/archive/release/noetic/${PN}/1.1.0-1/archive.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/gazebo_dev
	ros-noetic/gazebo_ros
	ros-noetic/pluginlib
	ros-noetic/rosbash
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
