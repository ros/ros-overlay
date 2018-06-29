# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="ROS2 version of the robot_state_publisher package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/bouncy/${PN}/2.1.0-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/geometry_msgs
	ros-bouncy/kdl_parser
	ros-bouncy/orocos_kdl
	ros-bouncy/rclcpp
	ros-bouncy/sensor_msgs
	ros-bouncy/tf2_ros
	ros-bouncy/urdf
	ros-bouncy/urdfdom_headers
	test? ( ros-bouncy/ament_lint_auto )
	test? ( ros-bouncy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
