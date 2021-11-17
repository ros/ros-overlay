# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="gazebo_video_monitor_utils contains utility scripts that are meant to inter[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/nlamprian/gazebo_video_monitors-release/archive/release/noetic/${PN}/0.7.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/gazebo_msgs
	ros-noetic/rospy
	ros-noetic/std_srvs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
