# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/kinetic/${PN}/2.1.3-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/control_toolbox
	ros-kinetic/hardware_interface
	ros-kinetic/interactive_markers
	ros-kinetic/qb_device_hardware_interface
	ros-kinetic/roscpp
	ros-kinetic/tf2
	ros-kinetic/tf2_geometry_msgs
	ros-kinetic/transmission_interface
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
