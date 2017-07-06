# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Libraries and examples for ROSserial usage on Embedded Linux Enviroments'"
HOMEPAGE="http://ros.org/wiki/rosserial_embeddedlinux"
SRC_URI="https://github.com/ros-gbp/rosserial-release/archive/release/indigo/rosserial_embeddedlinux/0.6.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rospy
	ros-indigo/rosserial_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/rosserial_client
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

