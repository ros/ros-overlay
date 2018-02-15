# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provides a set of tools/actions for manipulating the pr2\'s tilting\
	la[...]"
HOMEPAGE="http://ros.org/wiki/pr2_tilt_laser"
SRC_URI="https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/kinetic/${PN}/0.0.10-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/laser_geometry
	ros-kinetic/message_runtime
	ros-kinetic/pcl_conversions
	ros-kinetic/pcl_ros
	ros-kinetic/pr2_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
