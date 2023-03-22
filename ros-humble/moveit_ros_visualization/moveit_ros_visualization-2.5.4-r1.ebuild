# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Components of MoveIt that offer visualization"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/humble/${PN}/2.5.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/geometric_shapes
	ros-humble/interactive_markers
	ros-humble/moveit_common
	ros-humble/moveit_ros_planning_interface
	ros-humble/moveit_ros_robot_interaction
	ros-humble/moveit_ros_warehouse
	ros-humble/object_recognition_msgs
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rclpy
	ros-humble/rviz2
	ros-humble/tf2_eigen
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/class_loader
	dev-cpp/eigen
	dev-qt/qtopengl:5
	virtual/pkgconfig
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
