# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The POPF package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fmrico/${PN}-release/archive/release/eloquent/${PN}/0.0.3-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/rclcpp
	sys-devel/bison
	sys-devel/flex
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
