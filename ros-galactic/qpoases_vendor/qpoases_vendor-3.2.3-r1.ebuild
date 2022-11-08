# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Wrapper around qpOASES to make it available to the ROS ecosystem."
HOMEPAGE="https://projects.coin-or.org/qpOASES"
SRC_URI="https://github.com/Autoware-AI/${PN}-release/archive/release/galactic/${PN}/3.2.3-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 LGPL )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-vcs/subversion
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
