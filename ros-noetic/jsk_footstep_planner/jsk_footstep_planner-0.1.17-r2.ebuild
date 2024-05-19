# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="jsk_footstep_planner"
HOMEPAGE="http://ros.org/wiki/jsk_footstep_planner"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/noetic/${PN}/0.1.17-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/jsk_footstep_msgs
	ros-noetic/jsk_interactive_marker
	ros-noetic/jsk_pcl_ros
	ros-noetic/jsk_recognition_msgs
	ros-noetic/jsk_recognition_utils
	ros-noetic/jsk_rviz_plugins
	ros-noetic/jsk_topic_tools
	ros-noetic/pcl_ros
	ros-noetic/roscpp
	ros-noetic/roseus
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
