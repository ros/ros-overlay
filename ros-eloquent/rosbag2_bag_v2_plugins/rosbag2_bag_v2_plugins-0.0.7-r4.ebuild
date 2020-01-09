# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Package containing storage and converter plugins for rosbag 1"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2_bag_v2-release/archive/release/eloquent/${PN}/0.0.7-4.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/pluginlib
	ros-eloquent/rclcpp
	ros-eloquent/rcutils
	ros-eloquent/ros1_bridge
	ros-eloquent/ros1_rosbag_storage_vendor
	ros-eloquent/rosbag2
	ros-eloquent/rosbag2_storage
	test? ( ros-eloquent/ament_cmake_gmock )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/rosbag2_test_common )
	test? ( ros-eloquent/std_msgs )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
