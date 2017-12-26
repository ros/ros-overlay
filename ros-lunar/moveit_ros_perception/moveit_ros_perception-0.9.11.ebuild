# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Components of MoveIt connecting to perception"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/lunar/${PN}/0.9.11-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/image_transport
	ros-lunar/message_filters
	ros-lunar/moveit_core
	ros-lunar/moveit_msgs
	ros-lunar/octomap
	ros-lunar/pluginlib
	ros-lunar/rosconsole
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/tf
	ros-lunar/tf_conversions
	ros-lunar/urdf
	media-libs/freeglut
	media-libs/glew
	virtual/opengl
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
