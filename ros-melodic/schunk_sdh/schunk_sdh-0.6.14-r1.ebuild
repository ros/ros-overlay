# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides an interface for operating the schunk dexterous hand [...]"
HOMEPAGE="http://ros.org/wiki/schunk_sdh"
SRC_URI="https://github.com/ipa320/schunk_modular_robotics-release/archive/release/melodic/${PN}/0.6.14-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/cob_srvs
	ros-melodic/control_msgs
	ros-melodic/diagnostic_msgs
	ros-melodic/libntcan
	ros-melodic/libpcan
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/sdhlibrary_cpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/trajectory_msgs
	ros-melodic/urdf
	dev-libs/boost[python]
	app-arch/dpkg
	virtual/libusb
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
