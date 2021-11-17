# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="jsk interactive markers"
HOMEPAGE="http://ros.org/wiki/interactive_marker"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/noetic/${PN}/2.1.7-4.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/dynamic_reconfigure
	ros-noetic/dynamic_tf_publisher
	ros-noetic/eigen_conversions
	ros-noetic/geometry_msgs
	ros-noetic/interactive_markers
	ros-noetic/jsk_footstep_msgs
	ros-noetic/jsk_recognition_msgs
	ros-noetic/jsk_recognition_utils
	ros-noetic/jsk_rviz_plugins
	ros-noetic/jsk_topic_tools
	ros-noetic/message_filters
	ros-noetic/message_runtime
	ros-noetic/moveit_msgs
	ros-noetic/roscpp
	ros-noetic/roslib
	ros-noetic/rviz
	ros-noetic/sensor_msgs
	ros-noetic/tf
	ros-noetic/tf_conversions
	ros-noetic/urdf
	ros-noetic/visualization_msgs
	dev-libs/tinyxml
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	ros-noetic/message_generation
	ros-noetic/mk
	ros-noetic/rosbuild
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
