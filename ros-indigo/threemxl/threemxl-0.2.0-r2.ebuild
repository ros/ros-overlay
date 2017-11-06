# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Dynamixel and 3mxl driver"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/wcaarls/threemxl-release/archive/release/indigo/threemxl/0.2.0-2.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/roscpp
	ros-indigo/shared_serial
	dev-embedded/libftdi[cxx]
	sys-libs/readline
	dev-cpp/muParser
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	sys-libs/readline
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
