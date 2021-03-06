# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Driver for the FLIR pan/tilt units."
HOMEPAGE="http://wiki.ros.org/flir_ptu_driver"
SRC_URI="https://github.com/ros-drivers-gbp/flir_ptu-release/archive/release/kinetic/${PN}/0.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/diagnostic_updater
	ros-kinetic/flir_ptu_description
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/serial
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
	ros-kinetic/roslint
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
