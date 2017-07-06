# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The jsk_footstep_controller package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_footstep_controller/0.1.13-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/diagnostic_updater
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/genmsg
	ros-kinetic/geometry_msgs
	ros-kinetic/jsk_footstep_msgs
	ros-kinetic/jsk_footstep_planner
	ros-kinetic/jsk_pcl_ros
	ros-kinetic/jsk_topic_tools
	ros-kinetic/kdl_conversions
	ros-kinetic/kdl_parser
	ros-kinetic/message_filters
	ros-kinetic/message_generation
	ros-kinetic/sensor_msgs
	ros-kinetic/sound_play
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/tf2
	ros-kinetic/tf_conversions
	ros-kinetic/urdf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

