# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Components of MoveIt that offer visualization"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/foxy/${PN}/2.2.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geometric_shapes
	ros-foxy/interactive_markers
	ros-foxy/moveit_ros_planning_interface
	ros-foxy/moveit_ros_robot_interaction
	ros-foxy/moveit_ros_warehouse
	ros-foxy/object_recognition_msgs
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/rclpy
	ros-foxy/rviz2
	ros-foxy/tf2_eigen
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/class_loader
	ros-foxy/moveit_common
	dev-cpp/eigen
	dev-games/ogre
	dev-qt/qtopengl:5
	virtual/pkgconfig
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
