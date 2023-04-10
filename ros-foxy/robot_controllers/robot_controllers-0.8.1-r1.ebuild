# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Some basic robot controllers for use with robot_controllers_interface."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fetchrobotics-gbp/${PN}-ros2-release/archive/release/foxy/${PN}/0.8.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/angles
	ros-foxy/control_msgs
	ros-foxy/geometry_msgs
	ros-foxy/kdl_parser
	ros-foxy/nav_msgs
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/rclcpp_action
	ros-foxy/robot_controllers_interface
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_ros
	ros-foxy/trajectory_msgs
	ros-foxy/urdf
	test? ( ros-foxy/ament_cmake_cpplint )
	test? ( ros-foxy/ament_cmake_gtest )
	sci-libs/orocos_kdl
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
