# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="CiA\(r\) CANopen 301 master implementation with support for interprocess ma[...]"
HOMEPAGE="http://wiki.ros.org/canopen_master"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/indigo/${PN}/0.6.9-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/class_loader
	ros-indigo/socketcan_interface
	test? ( ros-indigo/rosunit )
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
