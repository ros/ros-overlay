# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A handful of useful utility functions for nav_2d packages."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/${PN}/0.1.7-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/geometry_msgs
	ros-crystal/nav2_msgs
	ros-crystal/nav_2d_msgs
	ros-crystal/nav_msgs
	ros-crystal/tf2
	ros-crystal/tf2_geometry_msgs
	test? ( ros-crystal/ament_cmake_gtest )
	test? ( ros-crystal/ament_cmake_pytest )
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
	test? ( ros-crystal/launch )
	test? ( ros-crystal/launch_testing )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	ros-crystal/nav2_common
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
