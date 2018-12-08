# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS driver for IBEO LUX"
HOMEPAGE="http://wiki.ros.org/ibeo_lux"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/lunar/${PN}/2.0.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/ibeo_core
	ros-lunar/ibeo_msgs
	ros-lunar/network_interface
	ros-lunar/pcl_ros
	ros-lunar/roscpp
	ros-lunar/std_msgs
	ros-lunar/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
