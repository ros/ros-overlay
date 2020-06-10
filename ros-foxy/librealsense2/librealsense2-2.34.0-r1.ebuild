# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Library for capturing data from the Intel\(R\) RealSense\(TM\) SR300, D400 [...]"
HOMEPAGE="https://github.com/IntelRealSense/librealsense/"
SRC_URI="https://github.com/ros2-gbp/librealsense-release/archive/release/foxy/${PN}/2.34.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

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
	ros-foxy/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
