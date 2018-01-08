# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package wraps the libphidgets to use it as a ros dependency"
HOMEPAGE="http://ros.org/wiki/libphidgets"
SRC_URI="https://github.com/ipa320/cob_extern-release/archive/release/indigo/${PN}/0.6.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/libusb
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
