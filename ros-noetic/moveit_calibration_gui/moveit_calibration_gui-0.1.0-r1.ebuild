# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="MoveIt calibration gui"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/JStech/moveit_calibration-release/archive/release/noetic/${PN}/0.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/geometric_shapes
	ros-noetic/moveit_calibration_plugins
	ros-noetic/moveit_core
	ros-noetic/moveit_ros_perception
	ros-noetic/moveit_ros_planning
	ros-noetic/moveit_ros_planning_interface
	ros-noetic/moveit_ros_visualization
	ros-noetic/moveit_visual_tools
	ros-noetic/pluginlib
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/rviz
	ros-noetic/rviz_visual_tools
	ros-noetic/tf2_eigen
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/class_loader
	ros-noetic/image_geometry
	dev-cpp/eigen
	virtual/pkgconfig
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
