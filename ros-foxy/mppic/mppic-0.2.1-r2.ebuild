# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="mppic"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/artofnothingness/${PN}-release/archive/release/foxy/${PN}/0.2.1-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/nav2_bringup
	ros-foxy/nav2_common
	ros-foxy/nav2_core
	ros-foxy/nav2_costmap_2d
	ros-foxy/nav2_msgs
	ros-foxy/nav2_util
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/tf2
	ros-foxy/visualization_msgs
	test? ( ros-foxy/ament_cmake_gtest )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
