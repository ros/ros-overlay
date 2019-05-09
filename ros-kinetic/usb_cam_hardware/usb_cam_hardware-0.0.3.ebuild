# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The usb_cam_hardware package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yoshito-n-students/${PN}-release/archive/release/kinetic/${PN}/0.0.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="TODO"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/hardware_interface
	ros-kinetic/nodelet
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/usb_cam_hardware_interface
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
