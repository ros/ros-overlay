# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="jsk interactive markers"
HOMEPAGE="http://ros.org/wiki/interactive_marker"
SRC_URI="https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/${PN}/2.1.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/dynamic_reconfigure
	ros-melodic/dynamic_tf_publisher
	ros-melodic/eigen_conversions
	ros-melodic/geometry_msgs
	ros-melodic/interactive_markers
	ros-melodic/jsk_footstep_msgs
	ros-melodic/jsk_recognition_msgs
	ros-melodic/jsk_recognition_utils
	ros-melodic/jsk_rviz_plugins
	ros-melodic/jsk_topic_tools
	ros-melodic/message_filters
	ros-melodic/message_runtime
	ros-melodic/moveit_msgs
	ros-melodic/roscpp
	ros-melodic/roseus
	ros-melodic/roslib
	ros-melodic/rviz
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/tf_conversions
	ros-melodic/urdf
	ros-melodic/visualization_msgs
	dev-libs/tinyxml
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/message_generation
	ros-melodic/mk
	ros-melodic/rosbuild
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
