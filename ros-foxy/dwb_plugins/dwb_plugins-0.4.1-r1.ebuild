# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Standard implementations of the GoalChecker\
	  and TrajectoryGenerators[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/${PN}/0.4.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/angles
	ros-foxy/dwb_core
	ros-foxy/nav2_util
	ros-foxy/nav_2d_msgs
	ros-foxy/nav_2d_utils
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/nav2_common
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
