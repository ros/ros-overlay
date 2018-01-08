# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains classes that are able to control the platform of the [...]"
HOMEPAGE="http://ros.org/wiki/cob_base_drive_chain"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/indigo/${PN}/0.6.11-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_canopen_motor
	ros-indigo/cob_generic_can
	ros-indigo/cob_utilities
	ros-indigo/control_msgs
	ros-indigo/diagnostic_msgs
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
