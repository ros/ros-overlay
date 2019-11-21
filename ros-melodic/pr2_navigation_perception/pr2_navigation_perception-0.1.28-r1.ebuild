# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package holds navigation-specific sensor configuration options and lau[...]"
HOMEPAGE="http://ros.org/wiki/pr2_navigation_perception"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/melodic/${PN}/0.1.28-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/filters
	ros-melodic/geometry_msgs
	ros-melodic/laser_filters
	ros-melodic/laser_geometry
	ros-melodic/laser_tilt_controller_filter
	ros-melodic/message_filters
	ros-melodic/pcl_ros
	ros-melodic/pr2_machine
	ros-melodic/pr2_navigation_self_filter
	ros-melodic/roscpp
	ros-melodic/semantic_point_annotator
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/topic_tools
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
