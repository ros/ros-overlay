# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Some basic robot controllers for use with robot_controllers_interface."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fetchrobotics-gbp/${PN}-ros2-release/archive/release/humble/${PN}/0.9.3-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/angles
	ros-humble/control_msgs
	ros-humble/geometry_msgs
	ros-humble/kdl_parser
	ros-humble/nav_msgs
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rclcpp_action
	ros-humble/robot_controllers_interface
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	ros-humble/trajectory_msgs
	ros-humble/urdf
	test? ( ros-humble/ament_cmake_cpplint )
	test? ( ros-humble/ament_cmake_gtest )
	sci-libs/orocos_kdl
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
