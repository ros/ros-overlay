# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The teraranger package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/Terabee/teraranger-release/archive/release/kinetic/teraranger/1.0.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/serial
	ros-kinetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
