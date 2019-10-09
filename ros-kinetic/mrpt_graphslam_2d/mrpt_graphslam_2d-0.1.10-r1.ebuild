# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Implement graphSLAM using the mrpt-graphslam library, in an online fashion\[...]"
HOMEPAGE="http://www.mrpt.org/"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/kinetic/${PN}/0.1.10-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/mrpt1
	ros-kinetic/mrpt_bridge
	ros-kinetic/mrpt_msgs
	ros-kinetic/multimaster_msgs_fkie
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/tf2
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
