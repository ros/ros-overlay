# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This packages provides a configurable driver of a chain\
  of Schunk powerc[...]"
HOMEPAGE="http://ros.org/wiki/schunk_powercube_chain"
SRC_URI="https://github.com/ipa320/schunk_modular_robotics-release/archive/release/indigo/${PN}/0.6.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

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
