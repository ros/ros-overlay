# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The pluginlib package provides tools for writing and dynamically loading pl[...]"
HOMEPAGE="http://www.ros.org/wiki/pluginlib"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/5.0.0-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_cpp
	ros-galactic/class_loader
	ros-galactic/rcpputils
	ros-galactic/rcutils
	ros-galactic/tinyxml2_vendor
	test? ( ros-galactic/ament_cmake_gtest )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
