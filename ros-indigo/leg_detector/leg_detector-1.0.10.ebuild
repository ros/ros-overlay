# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Leg Detector using a machine learning approach to find leglike patterns of lase"
HOMEPAGE="http://ros.org/wiki/leg_detector"
SRC_URI="https://github.com/OSUrobotics/people-release/archive/release/indigo/leg_detector/1.0.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/bfl
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/image_geometry
	ros-indigo/laser_filters
	ros-indigo/laser_geometry
	ros-indigo/map_laser
	ros-indigo/people_msgs
	ros-indigo/people_tracking_filter
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

