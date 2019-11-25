# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Tests package for rosbag2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/eloquent/${PN}/0.2.4-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/ament_index_cpp
	test? ( ros-eloquent/ament_cmake_gmock )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/rclcpp )
	test? ( ros-eloquent/ros2bag )
	test? ( ros-eloquent/rosbag2 )
	test? ( ros-eloquent/rosbag2_converter_default_plugins )
	test? ( ros-eloquent/rosbag2_storage )
	test? ( ros-eloquent/rosbag2_storage_default_plugins )
	test? ( ros-eloquent/rosbag2_test_common )
	test? ( ros-eloquent/std_msgs )
	test? ( ros-eloquent/test_msgs )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
