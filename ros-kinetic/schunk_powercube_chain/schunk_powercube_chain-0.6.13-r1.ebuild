# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This packages provides a configurable driver of a chain\
  of Schunk powerc[...]"
HOMEPAGE="http://ros.org/wiki/schunk_powercube_chain"
SRC_URI="https://github.com/ipa320/schunk_modular_robotics-release/archive/release/kinetic/${PN}/0.6.13-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_srvs
	ros-kinetic/control_msgs
	ros-kinetic/diagnostic_msgs
	ros-kinetic/libntcan
	ros-kinetic/libpcan
	ros-kinetic/roscpp
	ros-kinetic/schunk_libm5api
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/trajectory_msgs
	ros-kinetic/urdf
	sys-kernel/linux-headers
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
