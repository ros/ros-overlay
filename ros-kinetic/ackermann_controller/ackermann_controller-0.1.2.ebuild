# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The ackermann_controller package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/easymov/ackermann_controller-release/archive/release/kinetic/ackermann_controller/0.1.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/angles
	ros-kinetic/control_msgs
	ros-kinetic/control_toolbox
	ros-kinetic/controller_interface
	ros-kinetic/forward_command_controller
	ros-kinetic/hardware_interface
	ros-kinetic/nav_msgs
	ros-kinetic/realtime_tools
	ros-kinetic/roscpp
	ros-kinetic/tf
	ros-kinetic/urdf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

