# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="http://wiki.ros.org/rviz"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/1.13.12-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/image_transport
	ros-melodic/interactive_markers
	ros-melodic/laser_geometry
	ros-melodic/map_msgs
	ros-melodic/media_export
	ros-melodic/message_filters
	ros-melodic/message_runtime
	ros-melodic/nav_msgs
	ros-melodic/pluginlib
	ros-melodic/python_qt_binding
	ros-melodic/resource_retriever
	ros-melodic/rosbag
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	ros-melodic/urdf
	ros-melodic/visualization_msgs
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	media-libs/assimp
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
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/message_generation
	dev-cpp/eigen
	dev-qt/qtopengl:5
	dev-libs/urdfdom
	dev-libs/urdfdom_headers
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
