# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A libfreenect-based ROS driver for the Microsoft Kinect.  This is\
	a po[...]"
HOMEPAGE="http://ros.org/wiki/xiaoqiang_freenect_camera"
SRC_URI="https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/${PN}/0.0.10-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/camera_info_manager
	ros-kinetic/diagnostic_updater
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/image_transport
	ros-kinetic/libfreenect
	ros-kinetic/nodelet
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
