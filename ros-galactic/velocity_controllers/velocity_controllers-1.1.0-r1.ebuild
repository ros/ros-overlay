# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Generic controller for forwarding commands."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros2_controllers-release/archive/release/galactic/${PN}/1.1.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/forward_command_controller
	ros-galactic/rclcpp
	test? ( ros-galactic/ament_cmake_gmock )
	test? ( ros-galactic/controller_manager )
	test? ( ros-galactic/hardware_interface )
	test? ( ros-galactic/ros2_control_test_assets )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/pluginlib
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
