# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Tests package for rosbag2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/${PN}/0.1.8-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/ament_index_cpp
	test? ( ros-dashing/ament_cmake_gmock )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	test? ( ros-dashing/rclcpp )
	test? ( ros-dashing/ros2bag )
	test? ( ros-dashing/rosbag2 )
	test? ( ros-dashing/rosbag2_converter_default_plugins )
	test? ( ros-dashing/rosbag2_storage )
	test? ( ros-dashing/rosbag2_storage_default_plugins )
	test? ( ros-dashing/rosbag2_test_common )
	test? ( ros-dashing/std_msgs )
	test? ( ros-dashing/test_msgs )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
