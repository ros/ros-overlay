# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Robot Raconteur ROS Package"
HOMEPAGE="http://robotraconteur.com"
SRC_URI="https://github.com/${PN}-packaging/${PN}-ros-release/archive/release/noetic/${PN}/0.16.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/boost[python]
	net-wireless/bluez-libs
	sys-apps/dbus
	dev-libs/openssl
	virtual/libusb:1
	dev-libs/openssl
	=dev-lang/python-3*
	dev-python/numpy
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
