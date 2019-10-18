# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The pluginlib package provides tools for writing and dynamically loading pl[...]"
HOMEPAGE="http://www.ros.org/wiki/pluginlib"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/2.3.3-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/ament_index_cpp
	ros-dashing/class_loader
	ros-dashing/rcutils
	ros-dashing/tinyxml2_vendor
	test? ( ros-dashing/ament_cmake_gtest )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
