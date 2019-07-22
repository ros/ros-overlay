# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="TODO"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/${PN}/0.2.2-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/dwb_msgs
	ros-dashing/geometry_msgs
	ros-dashing/nav2_costmap_2d
	ros-dashing/nav2_util
	ros-dashing/nav_2d_utils
	ros-dashing/nav_msgs
	ros-dashing/pluginlib
	ros-dashing/rclcpp
	ros-dashing/std_msgs
	ros-dashing/tf2_ros
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_cmake_pytest )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	test? ( ros-dashing/launch )
	test? ( ros-dashing/launch_testing )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/nav2_common
	ros-dashing/nav_2d_msgs
	ros-dashing/sensor_msgs
	ros-dashing/visualization_msgs
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
