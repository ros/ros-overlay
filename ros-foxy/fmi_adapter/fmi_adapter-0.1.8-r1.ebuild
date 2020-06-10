# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Wraps FMUs for co-simulation"
HOMEPAGE="http://wiki.ros.org/fmi_adapter"
SRC_URI="https://github.com/boschresearch/${PN}_ros2-release/archive/release/foxy/${PN}/0.1.8-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/launch
	ros-foxy/launch_ros
	ros-foxy/rcl_interfaces
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/rclcpp_lifecycle
	ros-foxy/std_msgs
	test? ( ros-foxy/ament_cmake_gmock )
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_cmake_pytest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/launch_testing )
	test? ( ros-foxy/rcutils )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/fmilibrary_vendor
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
