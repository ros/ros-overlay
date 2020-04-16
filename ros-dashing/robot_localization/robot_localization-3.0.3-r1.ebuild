# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Provides nonlinear state estimation through sensor fusion of an abritrary n[...]"
HOMEPAGE="http://ros.org/wiki/robot_localization"
SRC_URI="https://github.com/cra-ros-pkg/${PN}-release/archive/release/dashing/${PN}/3.0.3-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/diagnostic_msgs
	ros-dashing/diagnostic_updater
	ros-dashing/geographic_msgs
	ros-dashing/geometry_msgs
	ros-dashing/nav_msgs
	ros-dashing/rclcpp
	ros-dashing/rmw_implementation
	ros-dashing/rosidl_default_runtime
	ros-dashing/sensor_msgs
	ros-dashing/std_msgs
	ros-dashing/std_srvs
	ros-dashing/tf2
	ros-dashing/tf2_eigen
	ros-dashing/tf2_geometry_msgs
	ros-dashing/tf2_ros
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	test? ( ros-dashing/builtin_interfaces )
	test? ( ros-dashing/launch_ros )
	test? ( ros-dashing/launch_testing_ament_cmake )
	dev-cpp/eigen
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/builtin_interfaces
	ros-dashing/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
