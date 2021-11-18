# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ros2_control plugin for Webots"
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/${PN}/1.1.2-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/controller_manager
	ros-galactic/hardware_interface
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/webots_ros2_driver
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
