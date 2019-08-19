# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This package is wrapping version of ROBOTIS Dynamxel SDK for ROS 2. The ROB[...]"
HOMEPAGE="http://wiki.ros.org/dynamixel_sdk"
SRC_URI="https://github.com/robotis-ros2-release/${PN}-release/archive/release/dashing/${PN}/3.7.10-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
