# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="USB Video Class driver library"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ktossell/libuvc-release/archive/release/lunar/libuvc/0.0.5-3.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/catkin
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

