# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Package containing a prototype for lifecycle implementation"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rclcpp-release/archive/release/galactic/${PN}/9.2.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/lifecycle_msgs
	ros-galactic/rcl_lifecycle
	ros-galactic/rclcpp
	ros-galactic/rmw
	ros-galactic/rosidl_typesupport_cpp
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/mimick_vendor )
	test? ( ros-galactic/performance_test_fixture )
	test? ( ros-galactic/rcutils )
	test? ( ros-galactic/test_msgs )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
