# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package holds navigation-specific sensor configuration options and lau[...]"
HOMEPAGE="http://ros.org/wiki/pr2_navigation_perception"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/noetic/${PN}/0.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/dynamic_reconfigure
	ros-noetic/filters
	ros-noetic/geometry_msgs
	ros-noetic/laser_filters
	ros-noetic/laser_geometry
	ros-noetic/laser_tilt_controller_filter
	ros-noetic/message_filters
	ros-noetic/pcl_ros
	ros-noetic/pr2_machine
	ros-noetic/pr2_navigation_self_filter
	ros-noetic/roscpp
	ros-noetic/semantic_point_annotator
	ros-noetic/sensor_msgs
	ros-noetic/tf
	ros-noetic/topic_tools
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
