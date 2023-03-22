# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Tests package for rosbag2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/${PN}/0.15.4-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_cpp
	test? ( ros-humble/ament_cmake_gmock )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/rclcpp )
	test? ( ros-humble/rcpputils )
	test? ( ros-humble/ros2bag )
	test? ( ros-humble/rosbag2_compression )
	test? ( ros-humble/rosbag2_compression_zstd )
	test? ( ros-humble/rosbag2_cpp )
	test? ( ros-humble/rosbag2_storage )
	test? ( ros-humble/rosbag2_storage_default_plugins )
	test? ( ros-humble/rosbag2_test_common )
	test? ( ros-humble/std_msgs )
	test? ( ros-humble/test_msgs )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
