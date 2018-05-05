# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="CiA\(r\) CANopen 301 master implementation with support for interprocess ma[...]"
HOMEPAGE="http://wiki.ros.org/canopen_master"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/lunar/${PN}/0.7.8-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/class_loader
	ros-lunar/socketcan_interface
	test? ( ros-lunar/rosunit )
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
