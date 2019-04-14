# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Node for the &quot;multivehicle simulator&quot; framework."
HOMEPAGE="http://wiki.ros.org/mvsim"
SRC_URI="https://github.com/ual-arm-ros-pkg-release/${PN}-release/archive/release/kinetic/${PN}/0.2.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/message_generation
	ros-kinetic/message_runtime
	ros-kinetic/mrpt1
	ros-kinetic/mrpt_bridge
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
