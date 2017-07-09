# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'jsk interactive markers'"
HOMEPAGE="http://ros.org/wiki/interactive_marker"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/indigo/jsk_interactive_marker/2.1.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/dynamic_reconfigure
	ros-indigo/dynamic_tf_publisher
	ros-indigo/eigen_conversions
	ros-indigo/geometry_msgs
	ros-indigo/interactive_markers
	ros-indigo/jsk_footstep_msgs
	ros-indigo/jsk_recognition_msgs
	ros-indigo/jsk_rviz_plugins
	ros-indigo/jsk_topic_tools
	ros-indigo/message_filters
	ros-indigo/message_runtime
	ros-indigo/moveit_msgs
	ros-indigo/pr2eus_moveit
	ros-indigo/roscpp
	ros-indigo/roseus
	ros-indigo/roslib
	ros-indigo/rviz
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/tf_conversions
	ros-indigo/urdf
	ros-indigo/visualization_msgs
	dev-libs/tinyxml
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/message_generation
	ros-indigo/mk
	ros-indigo/rosbuild
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

