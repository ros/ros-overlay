# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Generic joystick teleop for twist robots."
HOMEPAGE="http://wiki.ros.org/teleop_twist_joy"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/2.2.2-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/geometry_msgs
	ros-eloquent/joy
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_components
	ros-eloquent/sensor_msgs
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/launch_ros )
	test? ( ros-eloquent/launch_testing_ament_cmake )
	test? ( ros-eloquent/launch_testing_ros )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
