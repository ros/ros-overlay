# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="http://wiki.ros.org/rviz"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/1.14.11-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="( BSD CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/image_transport
	ros-noetic/interactive_markers
	ros-noetic/laser_geometry
	ros-noetic/map_msgs
	ros-noetic/media_export
	ros-noetic/message_filters
	ros-noetic/message_runtime
	ros-noetic/nav_msgs
	ros-noetic/pluginlib
	ros-noetic/python_qt_binding
	ros-noetic/resource_retriever
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/roslib
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	ros-noetic/urdf
	ros-noetic/visualization_msgs
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
	media-libs/assimp
	dev-games/ogre
	dev-games/ogre
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
	virtual/opengl
	dev-libs/tinyxml2
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	ros-noetic/message_generation
	media-libs/assimp
	dev-cpp/eigen
	dev-qt/qtopengl:5
	dev-libs/urdfdom
	dev-libs/urdfdom_headers
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
