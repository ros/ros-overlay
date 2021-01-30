# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Components of MoveIt connecting to perception"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/noetic/${PN}/1.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/image_transport
	ros-noetic/message_filters
	ros-noetic/moveit_core
	ros-noetic/moveit_msgs
	ros-noetic/moveit_ros_occupancy_map_monitor
	ros-noetic/object_recognition_msgs
	ros-noetic/pluginlib
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/tf2
	ros-noetic/tf2_eigen
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	ros-noetic/urdf
	test? ( ros-noetic/rosunit )
	media-libs/freeglut
	media-libs/glew
	virtual/opengl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
