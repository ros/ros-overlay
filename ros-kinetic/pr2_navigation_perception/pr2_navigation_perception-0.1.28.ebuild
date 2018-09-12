# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package holds navigation-specific sensor configuration options and lau[...]"
HOMEPAGE="http://ros.org/wiki/pr2_navigation_perception"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/${PN}/0.1.28-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/filters
	ros-kinetic/geometry_msgs
	ros-kinetic/laser_filters
	ros-kinetic/laser_geometry
	ros-kinetic/laser_tilt_controller_filter
	ros-kinetic/message_filters
	ros-kinetic/pcl_ros
	ros-kinetic/pr2_machine
	ros-kinetic/pr2_navigation_self_filter
	ros-kinetic/roscpp
	ros-kinetic/semantic_point_annotator
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/topic_tools
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
