# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ardrone_autonomy is a ROS driver for Parrot ARDrone 10 and 20 quadrocopters "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/AutonomyLab/ardrone_autonomy-release/archive/release/kinetic/ardrone_autonomy/1.4.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/camera_info_manager
	ros-kinetic/image_transport
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/roslint
	sys-devel/binutils
	virtual/daemontools
	dev-vcs/git
	x11-libs/gtk+:2
	net-wireless/wireless-tools
	virtual/libudev
	dev-libs/libxml2
	media-libs/libsdl
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

