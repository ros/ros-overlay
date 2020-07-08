# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Packages related to the operation of Rover Robotics rover hardware.  This i[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RoverRobotics-release/${PN}-release/archive/release/melodic/${PN}/1.1.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rr_control_input_manager
	ros-melodic/rr_openrover_description
	ros-melodic/rr_openrover_driver
	ros-melodic/rr_openrover_driver_msgs
	ros-melodic/rr_openrover_simulation
	ros-melodic/rr_rover_zero_driver
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
