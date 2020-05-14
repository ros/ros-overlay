# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Various helper utilities not associated with a particular stack"
HOMEPAGE="http://ros.org/wiki/uos_tools"
SRC_URI="https://github.com/uos-gbp/uos-tools/archive/release/melodic/${PN}/1.0.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/uos_common_urdf
	ros-melodic/uos_diffdrive_teleop
	ros-melodic/uos_freespace
	ros-melodic/uos_gazebo_worlds
	ros-melodic/uos_maps
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
