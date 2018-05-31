# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Launch files for xiaoqiang_freenect_camera to produce rectified, registered[...]"
HOMEPAGE="http://ros.org/wiki/xiaoqiang_freenect_launch"
SRC_URI="https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/${PN}/0.0.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/image_proc
	ros-kinetic/nodelet
	ros-kinetic/rgbd_launch
	ros-kinetic/tf
	ros-kinetic/xiaoqiang_freenect_camera
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
