# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Bindings and low-level controllers for ArbotiX-powered robots."
HOMEPAGE="http://ros.org/wiki/arbotix_python"
SRC_URI="https://github.com/vanadiumlabs/arbotix_ros-release/archive/release/kinetic/${PN}/0.10.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/arbotix_msgs
	ros-kinetic/control_msgs
	ros-kinetic/diagnostic_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	dev-python/pyserial
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
