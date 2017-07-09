# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'ROS Wrapper for the Segway RMP Ethernet Python Driver'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/ros_ethernet_rmp-release/archive/release/indigo/ros_ethernet_rmp/0.0.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/battery_monitor_rmp
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/rmp_msgs
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

