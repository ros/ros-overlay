# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Segmentation Functionality from the RAIL Lab"
HOMEPAGE="http://ros.org/wiki/rail_segmentation"
SRC_URI="https://github.com/gt-rail-release/${PN}/archive/release/indigo/${PN}/0.1.11-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/message_runtime
	ros-indigo/pcl_conversions
	ros-indigo/pcl_ros
	ros-indigo/rail_manipulation_msgs
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/sensor_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
	ros-indigo/tf2
	ros-indigo/tf2_ros
	dev-libs/boost
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
