# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Leg Detector using a machine learning approach to find leg-like patterns of[...]"
HOMEPAGE="http://ros.org/wiki/leg_detector"
SRC_URI="https://github.com/OSUrobotics/people-release/archive/release/lunar/${PN}/1.1.2-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/bfl
	ros-lunar/dynamic_reconfigure
	ros-lunar/geometry_msgs
	ros-lunar/image_geometry
	ros-lunar/laser_filters
	ros-lunar/laser_geometry
	ros-lunar/map_laser
	ros-lunar/message_filters
	ros-lunar/people_msgs
	ros-lunar/people_tracking_filter
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/tf
	ros-lunar/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
