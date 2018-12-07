# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Segmentation Functionality from the RAIL Lab"
HOMEPAGE="http://ros.org/wiki/rail_segmentation"
SRC_URI="https://github.com/gt-rail-release/${PN}/archive/release/kinetic/${PN}/0.1.12-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/message_runtime
	ros-kinetic/pcl_conversions
	ros-kinetic/pcl_ros
	ros-kinetic/rail_manipulation_msgs
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/sensor_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
	ros-kinetic/tf2
	ros-kinetic/tf2_ros
	dev-libs/boost
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
