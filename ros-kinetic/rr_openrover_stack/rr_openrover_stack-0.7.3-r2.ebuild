# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Packages related to the operation of Rover Robotics rover hardware.  This i[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RoverRobotics-release/${PN}-release/archive/release/kinetic/${PN}/0.7.3-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rr_control_input_manager
	ros-kinetic/rr_openrover_driver
	ros-kinetic/rr_openrover_driver_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
