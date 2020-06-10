# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Package containing storage and converter plugins for rosbag 1"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2_bag_v2-release/archive/release/foxy/${PN}/0.0.10-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/rcutils
	ros-foxy/ros1_bridge
	ros-foxy/ros1_rosbag_storage_vendor
	ros-foxy/rosbag2
	ros-foxy/rosbag2_storage
	test? ( ros-foxy/ament_cmake_gmock )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/rosbag2_test_common )
	test? ( ros-foxy/rosbag2_transport )
	test? ( ros-foxy/shared_queues_vendor )
	test? ( ros-foxy/std_msgs )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
