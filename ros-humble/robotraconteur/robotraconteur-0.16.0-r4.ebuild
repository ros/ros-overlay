# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ros-cmake

DESCRIPTION="Robot Raconteur ROS Package"
HOMEPAGE="http://robotraconteur.com"
SRC_URI="https://github.com/${PN}-packaging/${PN}-ros2-release/archive/release/humble/${PN}/0.16.0-4.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	dev-libs/boost[python]
	net-wireless/bluez-libs
	sys-apps/dbus
	dev-libs/openssl
	virtual/libusb:1
	dev-libs/openssl
	=dev-lang/python-3*
	dev-python/numpy
	dev-python/setuptools
	sys-libs/zlib
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-lang/swig
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
