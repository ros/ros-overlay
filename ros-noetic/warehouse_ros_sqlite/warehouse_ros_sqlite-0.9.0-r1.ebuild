# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Implementation of warehouse_ros for sqlite"
HOMEPAGE="http://ros.org/wiki/warehouse_ros"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.9.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/class_loader
	ros-noetic/roscpp
	ros-noetic/rostime
	ros-noetic/warehouse_ros
	test? ( ros-noetic/rostest )
	=dev-db/sqlite-3*
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-db/sqlite:3
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
