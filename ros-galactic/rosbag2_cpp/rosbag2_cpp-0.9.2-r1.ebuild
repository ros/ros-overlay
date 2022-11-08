# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="C++ ROSBag2 client library"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/galactic/${PN}/0.9.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_cpp
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/rcpputils
	ros-galactic/rcutils
	ros-galactic/rmw
	ros-galactic/rmw_implementation
	ros-galactic/rosbag2_storage
	ros-galactic/rosbag2_storage_default_plugins
	ros-galactic/rosidl_runtime_c
	ros-galactic/rosidl_runtime_cpp
	ros-galactic/rosidl_typesupport_cpp
	ros-galactic/rosidl_typesupport_introspection_cpp
	ros-galactic/shared_queues_vendor
	test? ( ros-galactic/ament_cmake_gmock )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/rosbag2_test_common )
	test? ( ros-galactic/test_msgs )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
