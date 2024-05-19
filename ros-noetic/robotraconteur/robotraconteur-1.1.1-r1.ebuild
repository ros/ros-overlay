# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The robotraconteur package"
HOMEPAGE="http://robotraconteur.com"
SRC_URI="https://github.com/${PN}-packaging/${PN}-ros-release/archive/release/noetic/${PN}/1.1.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	dev-libs/boost[python]
	net-wireless/bluez-libs
	sys-apps/dbus
	dev-libs/openssl
	virtual/libusb:1
	=dev-lang/python-3*
	dev-python/numpy
	dev-python/setuptools
	sys-libs/zlib
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
