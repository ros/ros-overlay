# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The control toolbox contains modules that are useful across all controllers."
HOMEPAGE="http://ros.org/wiki/control_toolbox"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/galactic/${PN}/2.0.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/control_msgs
	ros-galactic/rclcpp
	ros-galactic/rcutils
	ros-galactic/realtime_tools
	test? ( ros-galactic/ament_cmake_gmock )
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/rclcpp_lifecycle )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
