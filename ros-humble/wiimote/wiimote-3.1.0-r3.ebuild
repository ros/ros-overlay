# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="The wiimote package allows ROS nodes to communicate with a Nintendo Wiimote[...]"
HOMEPAGE="http://www.ros.org/wiki/wiimote"
SRC_URI="https://github.com/ros2-gbp/joystick_drivers-release/archive/release/humble/${PN}/3.1.0-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/rclcpp_lifecycle
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/std_srvs
	ros-humble/wiimote_msgs
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	app-misc/cwiid
	net-wireless/bluez-libs
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ament_cmake_auto
	app-misc/cwiid
	net-wireless/bluez-libs
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
