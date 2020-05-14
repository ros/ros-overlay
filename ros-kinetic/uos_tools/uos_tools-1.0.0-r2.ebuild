# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Various helper utilities not associated with a particular stack"
HOMEPAGE="http://ros.org/wiki/uos_tools"
SRC_URI="https://github.com/uos-gbp/uos-tools/archive/release/kinetic/${PN}/1.0.0-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/uos_common_urdf
	ros-kinetic/uos_diffdrive_teleop
	ros-kinetic/uos_freespace
	ros-kinetic/uos_gazebo_worlds
	ros-kinetic/uos_maps
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
