# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This packages provides a configurable driver of a chain\
  of Schunk powercubes. "
HOMEPAGE="http://ros.org/wiki/schunk_powercube_chain"
SRC_URI="https://github.com/ipa320/schunk_modular_robotics-release/archive/release/indigo/schunk_powercube_chain/0.6.9-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_srvs
	ros-indigo/control_msgs
	ros-indigo/diagnostic_msgs
	ros-indigo/libntcan
	ros-indigo/libpcan
	ros-indigo/roscpp
	ros-indigo/schunk_libm5api
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/trajectory_msgs
	ros-indigo/urdf
	sys-kernel/linux-headers
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

