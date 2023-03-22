# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The jsk_footstep_controller package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/noetic/${PN}/0.1.16-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/dynamic_reconfigure
	ros-noetic/genmsg
	ros-noetic/geometry_msgs
	ros-noetic/jsk_footstep_msgs
	ros-noetic/jsk_footstep_planner
	ros-noetic/jsk_pcl_ros
	ros-noetic/jsk_topic_tools
	ros-noetic/kdl_conversions
	ros-noetic/kdl_parser
	ros-noetic/message_filters
	ros-noetic/message_generation
	ros-noetic/sensor_msgs
	ros-noetic/sound_play
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/tf2
	ros-noetic/tf_conversions
	ros-noetic/urdf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
