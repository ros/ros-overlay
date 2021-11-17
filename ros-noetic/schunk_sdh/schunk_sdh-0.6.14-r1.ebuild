# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package provides an interface for operating the schunk dexterous hand [...]"
HOMEPAGE="http://ros.org/wiki/schunk_sdh"
SRC_URI="https://github.com/ipa320/schunk_modular_robotics-release/archive/release/noetic/${PN}/0.6.14-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/cob_srvs
	ros-noetic/control_msgs
	ros-noetic/diagnostic_msgs
	ros-noetic/libntcan
	ros-noetic/libpcan
	ros-noetic/message_runtime
	ros-noetic/roscpp
	ros-noetic/sdhlibrary_cpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/trajectory_msgs
	ros-noetic/urdf
	dev-libs/boost[python]
	app-arch/dpkg
	virtual/libusb
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/roslint
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
