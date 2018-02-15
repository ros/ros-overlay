# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The naoqi_bridge_msgs package provides custom messages for running Aldebara[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/${PN}-release/archive/release/indigo/${PN}/0.0.8-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib_msgs
	ros-indigo/genmsg
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/nav_msgs
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
