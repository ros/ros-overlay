# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/lunar/rviz/1.12.11-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( BSD CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/image_transport
	ros-lunar/interactive_markers
	ros-lunar/laser_geometry
	ros-lunar/map_msgs
	ros-lunar/media_export
	ros-lunar/message_filters
	ros-lunar/nav_msgs
	ros-lunar/pluginlib
	ros-lunar/python_qt_binding
	ros-lunar/resource_retriever
	ros-lunar/rosbag
	ros-lunar/rosconsole
	ros-lunar/roscpp
	ros-lunar/roslib
	ros-lunar/rospy
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/tf
	ros-lunar/urdf
	ros-lunar/visualization_msgs
	media-libs/assimp
	dev-cpp/eigen
	dev-games/ogre
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
	dev-libs/urdfdom_headers
	virtual/opengl
	dev-libs/tinyxml
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	media-libs/assimp
	dev-qt/qtopengl:5
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

