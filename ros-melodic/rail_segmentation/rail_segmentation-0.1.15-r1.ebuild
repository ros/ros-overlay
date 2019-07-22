# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Segmentation Functionality from the RAIL Lab"
HOMEPAGE="http://ros.org/wiki/rail_segmentation"
SRC_URI="https://github.com/gt-rail-release/${PN}/archive/release/melodic/${PN}/0.1.15-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/message_runtime
	ros-melodic/pcl_conversions
	ros-melodic/pcl_ros
	ros-melodic/rail_manipulation_msgs
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/sensor_msgs
	ros-melodic/std_srvs
	ros-melodic/tf
	ros-melodic/tf2
	ros-melodic/tf2_ros
	dev-libs/boost[python]
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
