# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A framework for writing drivers that helps with runtime reconfiguration, diagnos'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/driver_common-release/archive/release/indigo/driver_base/1.6.8-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_updater
	ros-indigo/dynamic_reconfigure
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/self_test
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

