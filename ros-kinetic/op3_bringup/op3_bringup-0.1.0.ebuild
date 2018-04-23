# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package is a demo for first time users.\
	There is an example in th[...]"
HOMEPAGE="http://wiki.ros.org/op3_bringup"
SRC_URI="https://github.com/ROBOTIS-GIT-release/robotis_op3_demo-release/archive/release/kinetic/${PN}/0.1.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/joint_state_publisher
	ros-kinetic/op3_description
	ros-kinetic/op3_manager
	ros-kinetic/robot_state_publisher
	ros-kinetic/rviz
	ros-kinetic/usb_cam
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
