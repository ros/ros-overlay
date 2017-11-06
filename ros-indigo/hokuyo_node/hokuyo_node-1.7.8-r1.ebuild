# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A ROS node to provide access to SCIP 2.0-compliant Hokuyo laser range finde[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/hokuyo_node-release/archive/release/indigo/hokuyo_node/1.7.8-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_updater
	ros-indigo/driver_base
	ros-indigo/dynamic_reconfigure
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/self_test
	ros-indigo/sensor_msgs
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
