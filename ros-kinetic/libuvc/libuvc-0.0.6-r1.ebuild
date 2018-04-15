# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="USB Video Class driver library"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ktossell/${PN}-release/archive/release/kinetic/${PN}/0.0.6-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	virtual/jpeg
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	dev-util/cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
