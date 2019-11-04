# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="ROSBag2 client library"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/0.2.1-2.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/ament_index_cpp
	ros-eloquent/pluginlib
	ros-eloquent/poco_vendor
	ros-eloquent/rcutils
	ros-eloquent/rosbag2_storage
	ros-eloquent/rosidl_generator_cpp
	ros-eloquent/rosidl_typesupport_cpp
	ros-eloquent/rosidl_typesupport_introspection_cpp
	ros-eloquent/shared_queues_vendor
	test? ( ros-eloquent/ament_cmake_gmock )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/rosbag2_test_common )
	test? ( ros-eloquent/test_msgs )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
