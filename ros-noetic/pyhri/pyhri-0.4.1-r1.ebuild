# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A Python wrapper library around the ROS4HRI ROS topics"
HOMEPAGE="http://wiki.ros.org/pyhri"
SRC_URI="https://github.com/ros4hri/${PN}-release/archive/release/noetic/${PN}/0.4.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/geometry_msgs
	ros-noetic/hri_msgs
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf2
	ros-noetic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
