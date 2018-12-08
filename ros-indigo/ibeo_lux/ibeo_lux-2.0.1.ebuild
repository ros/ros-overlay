# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS driver for IBEO LUX"
HOMEPAGE="http://wiki.ros.org/ibeo_lux"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/indigo/${PN}/2.0.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/ibeo_core
	ros-indigo/ibeo_msgs
	ros-indigo/network_interface
	ros-indigo/pcl_ros
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
