# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Generic CAN interface description with helpers for filtering and driver imp[...]"
HOMEPAGE="http://wiki.ros.org/socketcan_interface"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/${PN}/0.8.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/class_loader
	test? ( ros-melodic/rosunit )
	dev-libs/boost[python]
	dev-libs/console_bridge
	sys-kernel/linux-headers
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
