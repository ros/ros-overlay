# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS driver for IBEO LUX"
HOMEPAGE="http://wiki.ros.org/ibeo_lux"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/melodic/${PN}/2.0.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/ibeo_core
	ros-melodic/ibeo_msgs
	ros-melodic/network_interface
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
