# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="UWSim is an UnderWater SIMulator for marine robotics research and development U"
HOMEPAGE="http://www.irs.uji.es/uwsim/"
SRC_URI="https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/kinetic/uwsim/1.4.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/image_transport
	ros-kinetic/interactive_markers
	ros-kinetic/kdl_parser
	ros-kinetic/nav_msgs
	ros-kinetic/osg_interactive_markers
	ros-kinetic/osg_markers
	ros-kinetic/osg_utils
	ros-kinetic/pcl_ros
	ros-kinetic/pluginlib
	ros-kinetic/resource_retriever
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/underwater_sensor_msgs
	ros-kinetic/urdf
	ros-kinetic/uwsim_bullet
	ros-kinetic/uwsim_osgbullet
	ros-kinetic/uwsim_osgocean
	ros-kinetic/uwsim_osgworks
	ros-kinetic/xacro
	dev-libs/boost
	dev-games/openscenegraph
	dev-cpp/libxmlpp
	virtual/opengl
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

