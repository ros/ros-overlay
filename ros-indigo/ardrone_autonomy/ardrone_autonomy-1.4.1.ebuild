# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ardrone_autonomy is a ROS driver for Parrot AR-Drone 1.0 and 2.0 quadrocopt[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/AutonomyLab/ardrone_autonomy-release/archive/release/indigo/ardrone_autonomy/1.4.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/camera_info_manager
	ros-indigo/image_transport
	ros-indigo/message_runtime
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_srvs
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/roslint
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
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
