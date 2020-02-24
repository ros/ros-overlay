# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The iirob_filters package implements following filters:\
	  1\) Low-Pass[...]"
HOMEPAGE="http://wiki.ros.org/iirob_filters"
SRC_URI="https://github.com/KITrobotics/${PN}-release/archive/release/melodic/${PN}/0.9.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/dynamic_reconfigure
	ros-melodic/eigen_conversions
	ros-melodic/filters
	ros-melodic/geometry_msgs
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/rosparam_handler
	ros-melodic/rostest
	ros-melodic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
