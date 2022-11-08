# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Components of MoveIt that offer visualization"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/galactic/${PN}/2.3.4-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/geometric_shapes
	ros-galactic/interactive_markers
	ros-galactic/moveit_ros_planning_interface
	ros-galactic/moveit_ros_robot_interaction
	ros-galactic/moveit_ros_warehouse
	ros-galactic/object_recognition_msgs
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/rclpy
	ros-galactic/rviz2
	ros-galactic/tf2_eigen
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/class_loader
	ros-galactic/moveit_common
	dev-cpp/eigen
	dev-games/ogre
	dev-qt/qtopengl:5
	virtual/pkgconfig
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
