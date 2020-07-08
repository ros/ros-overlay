# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides an interface between ros and Rover Robotics rover hardware. Inputs[...]"
HOMEPAGE="http://ros.org/wiki/rr_openrover_driver"
SRC_URI="https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/melodic/${PN}/1.1.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/joy
	ros-melodic/message_runtime
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/rr_openrover_driver_msgs
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf2
	ros-melodic/twist_mux
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/tf2_geometry_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
