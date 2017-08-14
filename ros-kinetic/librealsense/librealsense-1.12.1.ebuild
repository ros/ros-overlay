# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Library for capturing data from the Intel\(R\) RealSense\(TM\) F200, SR300, R200, LR"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/intel-ros/librealsense-release/archive/release/kinetic/librealsense/1.12.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( Apache-1.0 CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	sys-kernel/dkms
	dev-libs/openssl
	virtual/libusb:1
	sys-kernel/linux-headers
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_prepare() {
	cd ${P}
	EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
				 EPATCH_FORCE="yes" epatch
	ros-cmake_src_prepare
}
