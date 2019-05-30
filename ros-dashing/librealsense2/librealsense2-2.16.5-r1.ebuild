# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Library for capturing data from the Intel\(R\) RealSense\(TM\) SR300 and D4[...]"
HOMEPAGE="https://github.com/IntelRealSense/librealsense/"
SRC_URI="https://github.com/ros2-gbp/librealsense-release/archive/release/dashing/${PN}/2.16.5-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	sys-kernel/dkms
	x11-libs/gtk+:3
	media-libs/glfw
	dev-libs/openssl
	virtual/libusb:1
	sys-kernel/linux-headers
	virtual/opengl
	sys-fs/udev
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
