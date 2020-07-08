# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS driver for the SICK TiM and SICK MRS series of lidars.\
	This pack[...]"
HOMEPAGE="http://wiki.ros.org/sick_scan"
SRC_URI="https://github.com/SICKAG/${PN}-release/archive/release/melodic/${PN}/1.7.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_updater
	ros-melodic/dynamic_reconfigure
	ros-melodic/message_runtime
	ros-melodic/perception_pcl
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
