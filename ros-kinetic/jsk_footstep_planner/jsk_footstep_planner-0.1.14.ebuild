# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="jsk_footstep_planner"
HOMEPAGE="http://ros.org/wiki/jsk_footstep_planner"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/kinetic/${PN}/0.1.14-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/jsk_footstep_msgs
	ros-kinetic/jsk_interactive_marker
	ros-kinetic/jsk_pcl_ros
	ros-kinetic/jsk_recognition_msgs
	ros-kinetic/jsk_recognition_utils
	ros-kinetic/jsk_rviz_plugins
	ros-kinetic/jsk_topic_tools
	ros-kinetic/pcl_ros
	ros-kinetic/roscpp
	ros-kinetic/roseus
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
