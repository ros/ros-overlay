# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Leg Detector using a machine learning approach to find leg-like patterns of[...]"
HOMEPAGE="http://ros.org/wiki/leg_detector"
SRC_URI="https://github.com/OSUrobotics/people-release/archive/release/kinetic/${PN}/1.1.3-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/bfl
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/image_geometry
	ros-kinetic/laser_filters
	ros-kinetic/laser_geometry
	ros-kinetic/map_laser
	ros-kinetic/message_filters
	ros-kinetic/people_msgs
	ros-kinetic/people_tracking_filter
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
