# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ROS 2 Domain Bridge"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/0.5.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/rcutils
	ros-humble/rosbag2_cpp
	ros-humble/rosidl_default_runtime
	ros-humble/rosidl_typesupport_cpp
	ros-humble/zstd_vendor
	test? ( ros-humble/ament_cmake_gmock )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/example_interfaces )
	test? ( ros-humble/launch )
	test? ( ros-humble/launch_testing )
	test? ( ros-humble/launch_testing_ament_cmake )
	test? ( ros-humble/rmw_connextdds )
	test? ( ros-humble/rmw_cyclonedds_cpp )
	test? ( ros-humble/rmw_fastrtps_cpp )
	test? ( ros-humble/rmw_implementation_cmake )
	test? ( ros-humble/rosgraph_msgs )
	test? ( ros-humble/test_msgs )
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
