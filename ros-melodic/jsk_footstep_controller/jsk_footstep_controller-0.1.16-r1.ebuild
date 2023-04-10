# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The jsk_footstep_controller package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/melodic/${PN}/0.1.16-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/dynamic_reconfigure
	ros-melodic/genmsg
	ros-melodic/geometry_msgs
	ros-melodic/jsk_footstep_msgs
	ros-melodic/jsk_footstep_planner
	ros-melodic/jsk_pcl_ros
	ros-melodic/jsk_topic_tools
	ros-melodic/kdl_conversions
	ros-melodic/kdl_parser
	ros-melodic/message_filters
	ros-melodic/message_generation
	ros-melodic/sensor_msgs
	ros-melodic/sound_play
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/tf2
	ros-melodic/tf_conversions
	ros-melodic/urdf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
