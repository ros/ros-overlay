# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This package provides an interface for operating the schunk dexterous hand (SDH)'"
HOMEPAGE="http://ros.org/wiki/schunk_sdh"
SRC_URI="https://github.com/ipa320/schunk_modular_robotics-release/archive/release/indigo/schunk_sdh/0.6.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/cob_srvs
	ros-indigo/control_msgs
	ros-indigo/diagnostic_msgs
	ros-indigo/libntcan
	ros-indigo/libpcan
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/trajectory_msgs
	ros-indigo/urdf
	dev-libs/boost
	app-arch/dpkg
	virtual/libusb
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/roslint
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

