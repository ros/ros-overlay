# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A libfreenect-based ROS driver for the Microsoft Kinect\
	Modified versi[...]"
HOMEPAGE="http://ros.org/wiki/xiaoqiang_freenect_stack"
SRC_URI="https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/${PN}/0.0.7-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/xiaoqiang_freenect_camera
	ros-kinetic/xiaoqiang_freenect_launch
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
