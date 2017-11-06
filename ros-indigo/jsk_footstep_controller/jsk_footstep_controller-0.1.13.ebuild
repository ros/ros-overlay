# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The jsk_footstep_controller package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/indigo/jsk_footstep_controller/0.1.13-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/dynamic_reconfigure
	ros-indigo/genmsg
	ros-indigo/geometry_msgs
	ros-indigo/jsk_footstep_msgs
	ros-indigo/jsk_footstep_planner
	ros-indigo/jsk_pcl_ros
	ros-indigo/jsk_topic_tools
	ros-indigo/kdl_conversions
	ros-indigo/kdl_parser
	ros-indigo/message_filters
	ros-indigo/message_generation
	ros-indigo/sensor_msgs
	ros-indigo/sound_play
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/tf2
	ros-indigo/tf_conversions
	ros-indigo/urdf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

