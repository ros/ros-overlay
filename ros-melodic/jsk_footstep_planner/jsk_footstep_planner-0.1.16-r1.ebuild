# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="jsk_footstep_planner"
HOMEPAGE="http://ros.org/wiki/jsk_footstep_planner"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/melodic/${PN}/0.1.16-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/jsk_footstep_msgs
	ros-melodic/jsk_interactive_marker
	ros-melodic/jsk_pcl_ros
	ros-melodic/jsk_recognition_msgs
	ros-melodic/jsk_recognition_utils
	ros-melodic/jsk_rviz_plugins
	ros-melodic/jsk_topic_tools
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/roseus
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
