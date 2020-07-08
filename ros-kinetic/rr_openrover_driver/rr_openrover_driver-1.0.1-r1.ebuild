# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides an interface between ros and Rover Robotics rover hardware. Inputs[...]"
HOMEPAGE="http://ros.org/wiki/rr_openrover_driver"
SRC_URI="https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/${PN}/1.0.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/joy
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/rr_openrover_driver_msgs
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf2
	ros-kinetic/twist_mux
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/tf2_geometry_msgs
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
