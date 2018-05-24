# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Generic CAN interface description with helpers for filtering and driver imp[...]"
HOMEPAGE="http://wiki.ros.org/socketcan_interface"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/${PN}/0.7.9-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/class_loader
	test? ( ros-kinetic/rosunit )
	dev-libs/boost
	sys-kernel/linux-headers
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
