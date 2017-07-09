# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Supporting utilities for ROSflight packages"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_utils/0.1.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/gazebo_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/roscpp
	ros-kinetic/rosflight_msgs
	ros-kinetic/rosgraph_msgs
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_srvs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

