# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ros-cmake

DESCRIPTION="Provides an Interface to read the sensor output of a SICK\
  Safety Scanner"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SICKAG/${PN}-release/archive/release/humble/${PN}/1.0.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="ALv2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
