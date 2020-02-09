# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Wraps FMUs for co-simulation"
HOMEPAGE="http://wiki.ros.org/fmi_adapter"
SRC_URI="https://github.com/boschresearch/${PN}_ros2-release/archive/release/eloquent/${PN}/0.1.7-2.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/launch
	ros-eloquent/launch_ros
	ros-eloquent/rcl_interfaces
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_components
	ros-eloquent/rclcpp_lifecycle
	ros-eloquent/std_msgs
	test? ( ros-eloquent/ament_cmake_gmock )
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_cmake_pytest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/launch_testing )
	test? ( ros-eloquent/rcutils )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/fmilibrary_vendor
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
