# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Library for capturing data from the Intel\(R\) RealSense\(TM\) SR300 and D4[...]"
HOMEPAGE="https://github.com/IntelRealSense/librealsense/"
SRC_URI="https://github.com/ros2-gbp/librealsense-release/archive/release/crystal/${PN}/2.16.5-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	sys-kernel/dkms
	dev-libs/openssl
	virtual/libusb:1
	sys-kernel/linux-headers
	sys-fs/udev
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
