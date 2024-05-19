# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Implement graphSLAM using the mrpt-graphslam library, in an online fashion\[...]"
HOMEPAGE="http://www.mrpt.org/"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/noetic/${PN}/0.1.16-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/fkie_multimaster_msgs
	ros-noetic/geometry_msgs
	ros-noetic/mrpt2
	ros-noetic/mrpt_msgs
	ros-noetic/mrpt_msgs_bridge
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf2
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
