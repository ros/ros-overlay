# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Package containing storage and converter plugins for rosbag 1"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2_bag_v2-release/archive/release/dashing/${PN}/0.0.6-2.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/pluginlib
	ros-dashing/rclcpp
	ros-dashing/rcutils
	ros-dashing/ros1_bridge
	ros-dashing/ros1_rosbag_storage_vendor
	ros-dashing/rosbag2
	ros-dashing/rosbag2_storage
	test? ( ros-dashing/ament_cmake_gmock )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	test? ( ros-dashing/rosbag2_test_common )
	test? ( ros-dashing/std_msgs )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
