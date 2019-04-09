# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Package containing storage and converter plugins for rosbag 1"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/${PN}/0.0.7-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/pluginlib
	ros-crystal/rclcpp
	ros-crystal/rcutils
	ros-crystal/ros1_bridge
	ros-crystal/ros1_rosbag_storage_vendor
	ros-crystal/rosbag2
	ros-crystal/rosbag2_storage
	test? ( ros-crystal/ament_cmake_gmock )
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
	test? ( ros-crystal/rosbag2_test_common )
	test? ( ros-crystal/std_msgs )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
