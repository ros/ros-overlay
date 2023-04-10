# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="End-Effector2 package: provides a ROS2-based set of standard interfaces to [...]"
HOMEPAGE="https://advrhumanoids.github.io/ROSEndEffectorDocs/"
SRC_URI="https://github.com/ADVRHumanoids/ROSEndEffector2-release/archive/release/foxy/${PN}/0.0.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/joint_state_publisher
	ros-foxy/joint_state_publisher_gui
	ros-foxy/kdl_parser
	ros-foxy/moveit_ros_planning_interface
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/rclcpp_action
	ros-foxy/rclpy
	ros-foxy/rosee_msg
	ros-foxy/srdfdom
	dev-cpp/muParser
	dev-cpp/yaml-cpp
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
