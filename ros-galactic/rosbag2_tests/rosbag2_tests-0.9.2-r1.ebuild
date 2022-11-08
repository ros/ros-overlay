# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Tests package for rosbag2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/galactic/${PN}/0.9.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_cpp
	test? ( ros-galactic/ament_cmake_gmock )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/rclcpp )
	test? ( ros-galactic/rcpputils )
	test? ( ros-galactic/ros2bag )
	test? ( ros-galactic/rosbag2_compression )
	test? ( ros-galactic/rosbag2_compression_zstd )
	test? ( ros-galactic/rosbag2_cpp )
	test? ( ros-galactic/rosbag2_storage )
	test? ( ros-galactic/rosbag2_storage_default_plugins )
	test? ( ros-galactic/rosbag2_test_common )
	test? ( ros-galactic/std_msgs )
	test? ( ros-galactic/test_msgs )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
