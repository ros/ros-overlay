# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="UWSim is an UnderWater SIMulator for marine robotics research and development U"
HOMEPAGE="http://www.irs.uji.es/uwsim/"
SRC_URI="https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/indigo/uwsim/1.4.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/image_transport
	ros-indigo/interactive_markers
	ros-indigo/kdl_parser
	ros-indigo/nav_msgs
	ros-indigo/osg_interactive_markers
	ros-indigo/osg_markers
	ros-indigo/osg_utils
	ros-indigo/pcl_ros
	ros-indigo/pluginlib
	ros-indigo/resource_retriever
	ros-indigo/robot_state_publisher
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/underwater_sensor_msgs
	ros-indigo/urdf
	ros-indigo/uwsim_bullet
	ros-indigo/uwsim_osgbullet
	ros-indigo/uwsim_osgocean
	ros-indigo/uwsim_osgworks
	ros-indigo/xacro
	dev-libs/boost
	dev-games/openscenegraph
	dev-cpp/libxmlpp
	virtual/opengl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

