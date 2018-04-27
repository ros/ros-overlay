# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package holds navigation-specific sensor configuration options and lau[...]"
HOMEPAGE="http://ros.org/wiki/pr2_navigation_perception"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/indigo/${PN}/0.1.28-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
	ros-indigo/filters
	ros-indigo/geometry_msgs
	ros-indigo/laser_filters
	ros-indigo/laser_geometry
	ros-indigo/laser_tilt_controller_filter
	ros-indigo/message_filters
	ros-indigo/pcl_ros
	ros-indigo/pr2_machine
	ros-indigo/pr2_navigation_self_filter
	ros-indigo/roscpp
	ros-indigo/semantic_point_annotator
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/topic_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
