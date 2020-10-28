# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="CiA\(r\) CANopen 301 master implementation with support for interprocess ma[...]"
HOMEPAGE="http://wiki.ros.org/canopen_master"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/noetic/${PN}/0.8.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/class_loader
	ros-noetic/socketcan_interface
	test? ( ros-noetic/rosunit )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
