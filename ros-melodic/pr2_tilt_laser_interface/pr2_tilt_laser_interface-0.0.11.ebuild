# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides a set of tools/actions for manipulating the pr2\'s tilting\
	la[...]"
HOMEPAGE="http://ros.org/wiki/pr2_tilt_laser"
SRC_URI="https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/melodic/${PN}/0.0.11-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/laser_geometry
	ros-melodic/message_runtime
	ros-melodic/pcl_conversions
	ros-melodic/pcl_ros
	ros-melodic/pr2_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
