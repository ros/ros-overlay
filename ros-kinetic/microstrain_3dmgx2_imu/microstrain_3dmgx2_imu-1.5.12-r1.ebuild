# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A driver for IMUs compatible the microstrain 3DMGX2 and 3DMGX3 protocol Inclu"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/microstrain_3dmgx2_imu-release/archive/release/kinetic/microstrain_3dmgx2_imu/1.5.12-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_updater
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
	ros-kinetic/self_test
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

