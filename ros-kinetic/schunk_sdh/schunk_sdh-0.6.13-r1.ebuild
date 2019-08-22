# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides an interface for operating the schunk dexterous hand [...]"
HOMEPAGE="http://ros.org/wiki/schunk_sdh"
SRC_URI="https://github.com/ipa320/schunk_modular_robotics-release/archive/release/kinetic/${PN}/0.6.13-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/cob_srvs
	ros-kinetic/control_msgs
	ros-kinetic/diagnostic_msgs
	ros-kinetic/libntcan
	ros-kinetic/libpcan
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
	ros-kinetic/sdhlibrary_cpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/trajectory_msgs
	ros-kinetic/urdf
	dev-libs/boost[python]
	app-arch/dpkg
	virtual/libusb
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
