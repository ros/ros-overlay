# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The POPF package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fmrico/${PN}-release/archive/release/galactic/${PN}/0.0.13-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="GPL-2.0-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/rclcpp
	sys-devel/bison
	sci-libs/coinor-cbc
	sci-libs/coinor-cgl
	sci-libs/coinor-clp
	sci-libs/coinor-utils
	sys-devel/flex
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
