# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Metapackage for SawYer roch robot software'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_robot/2.0.13-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/roch_base
	ros-kinetic/roch_bringup
	ros-kinetic/roch_capabilities
	ros-kinetic/roch_control
	ros-kinetic/roch_description
	ros-kinetic/roch_ftdi
	ros-kinetic/roch_msgs
	ros-kinetic/roch_safety_controller
	ros-kinetic/roch_sensorpc
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

