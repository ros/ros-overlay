# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Leg Detector using a machine learning approach to find leg-like patterns of[...]"
HOMEPAGE="http://ros.org/wiki/leg_detector"
SRC_URI="https://github.com/OSUrobotics/people-release/archive/release/melodic/${PN}/1.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/bfl
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/image_geometry
	ros-melodic/laser_filters
	ros-melodic/laser_geometry
	ros-melodic/map_laser
	ros-melodic/message_filters
	ros-melodic/people_msgs
	ros-melodic/people_tracking_filter
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
