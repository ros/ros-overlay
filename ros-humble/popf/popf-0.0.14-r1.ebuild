# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="The POPF package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fmrico/${PN}-release/archive/release/humble/${PN}/0.0.14-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="GPL-2.0-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/rclcpp
	sys-devel/bison
	sci-libs/coinor-cbc
	sci-libs/coinor-cgl
	sci-libs/coinor-clp
	sci-libs/coinor-utils
	sys-devel/flex
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
