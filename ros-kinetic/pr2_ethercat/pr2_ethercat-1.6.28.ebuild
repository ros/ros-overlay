# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Main loop that runs the robot."
HOMEPAGE="http://pr.willowgarage.com"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/kinetic/${PN}/1.6.28-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/diagnostic_updater
	ros-kinetic/ethercat_hardware
	ros-kinetic/pr2_controller_manager
	ros-kinetic/realtime_tools
	ros-kinetic/roscpp
	ros-kinetic/std_srvs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
