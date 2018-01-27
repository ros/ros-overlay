# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/indigo/${PN}/1.11.18-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( BSD CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/image_geometry
	ros-indigo/image_transport
	ros-indigo/interactive_markers
	ros-indigo/laser_geometry
	ros-indigo/map_msgs
	ros-indigo/media_export
	ros-indigo/message_filters
	ros-indigo/nav_msgs
	ros-indigo/pluginlib
	ros-indigo/python_qt_binding
	ros-indigo/resource_retriever
	ros-indigo/rosbag
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
	ros-indigo/urdf
	ros-indigo/visualization_msgs
	media-libs/assimp
	dev-cpp/eigen
	dev-games/ogre
	dev-qt/qtcore:4
	dev-qt/qtopengl:4
	dev-libs/urdfdom_headers
	virtual/opengl
	dev-libs/tinyxml
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	media-libs/assimp
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
