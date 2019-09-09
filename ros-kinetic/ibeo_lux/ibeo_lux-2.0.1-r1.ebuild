# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS driver for IBEO LUX"
HOMEPAGE="http://wiki.ros.org/ibeo_lux"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/kinetic/${PN}/2.0.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/ibeo_core
	ros-kinetic/ibeo_msgs
	ros-kinetic/network_interface
	ros-kinetic/pcl_ros
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
