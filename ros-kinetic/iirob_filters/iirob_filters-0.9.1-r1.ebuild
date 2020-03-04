# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The iirob_filters package implements following filters:\
	  1\) Low-Pass[...]"
HOMEPAGE="http://wiki.ros.org/iirob_filters"
SRC_URI="https://github.com/KITrobotics/${PN}-release/archive/release/kinetic/${PN}/0.9.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/eigen_conversions
	ros-kinetic/filters
	ros-kinetic/geometry_msgs
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/rosparam_handler
	ros-kinetic/rostest
	ros-kinetic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
