# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Messages for communicating with a Rover Pro."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RoverRobotics-release/${PN}-release/archive/release/foxy/${PN}/0.1.1-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/rover_bringup
	ros-foxy/rover_description
	ros-foxy/rover_driver
	ros-foxy/rover_msgs
	ros-foxy/rover_navigation
	ros-foxy/rover_teleop
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
