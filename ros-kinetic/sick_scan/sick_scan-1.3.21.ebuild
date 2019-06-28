# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS driver for the SICK TiM and SICK MRS series of laser scanners.\
	T[...]"
HOMEPAGE="http://wiki.ros.org/sick_scan"
SRC_URI="https://github.com/SICKAG/${PN}-release/archive/release/kinetic/${PN}/1.3.21-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_updater
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/message_runtime
	ros-kinetic/pcl_conversions
	ros-kinetic/pcl_ros
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
