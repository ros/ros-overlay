# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Tests package for rosbag2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/${PN}/0.0.7-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/ament_index_cpp
	test? ( ros-crystal/ament_cmake_gmock )
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
	test? ( ros-crystal/rclcpp )
	test? ( ros-crystal/ros1_bridge )
	test? ( ros-crystal/ros2bag )
	test? ( ros-crystal/rosbag2 )
	test? ( ros-crystal/rosbag2_bag_v2_plugins )
	test? ( ros-crystal/rosbag2_converter_default_plugins )
	test? ( ros-crystal/rosbag2_storage )
	test? ( ros-crystal/rosbag2_storage_default_plugins )
	test? ( ros-crystal/rosbag2_test_common )
	test? ( ros-crystal/std_msgs )
	test? ( ros-crystal/test_msgs )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
