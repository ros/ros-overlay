# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.com/${PN}/public/${PN}-release/repository/archive.tar.gz?ref=release/kinetic/${PN}/2.0.1-1 -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/toposens_description
	ros-kinetic/toposens_driver
	ros-kinetic/toposens_markers
	ros-kinetic/toposens_msgs
	ros-kinetic/toposens_pointcloud
	ros-kinetic/toposens_sync
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
