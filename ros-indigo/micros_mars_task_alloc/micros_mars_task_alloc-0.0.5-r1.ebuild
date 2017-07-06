# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The micros_mars_task_alloc package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/liminglong/micros_mars_task_alloc-release/archive/release/indigo/micros_mars_task_alloc/0.0.5-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/cv_bridge
	ros-indigo/geometry_msgs
	ros-indigo/kobuki_msgs
	ros-indigo/message_generation
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

