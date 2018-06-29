# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="C++ nodes which were previously in the ros2/examples repository but are now[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/demos-release/archive/release/bouncy/${PN}/0.5.1-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/example_interfaces
	ros-bouncy/launch_ros
	ros-bouncy/rclcpp
	ros-bouncy/rcutils
	ros-bouncy/rmw_implementation
	ros-bouncy/rosidl_default_runtime
	ros-bouncy/sensor_msgs
	ros-bouncy/std_msgs
	test? ( ros-bouncy/ament_cmake_pytest )
	test? ( ros-bouncy/ament_lint_auto )
	test? ( ros-bouncy/ament_lint_common )
	test? ( ros-bouncy/launch )
	test? ( ros-bouncy/launch_testing )
	test? ( ros-bouncy/rclcpp )
	test? ( ros-bouncy/rmw_implementation )
	test? ( ros-bouncy/rosidl_default_generators )
	test? ( ros-bouncy/rosidl_default_runtime )
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
	ros-bouncy/rmw_implementation_cmake
	ros-bouncy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
