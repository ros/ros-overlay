# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Wrapper around qpOASES to make it available to the ROS ecosystem."
HOMEPAGE="https://projects.coin-or.org/qpOASES"
SRC_URI="https://github.com/Autoware-AI/${PN}-release/archive/release/foxy/${PN}/3.2.3-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 LGPL )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-vcs/subversion
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
