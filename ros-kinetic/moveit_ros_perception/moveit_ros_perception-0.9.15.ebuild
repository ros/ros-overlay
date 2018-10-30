# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Components of MoveIt! connecting to perception"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/${PN}/0.9.15-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/image_transport
	ros-kinetic/message_filters
	ros-kinetic/moveit_core
	ros-kinetic/moveit_msgs
	ros-kinetic/octomap
	ros-kinetic/pluginlib
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/tf_conversions
	ros-kinetic/urdf
	media-libs/freeglut
	media-libs/glew
	virtual/opengl
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
