# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An Orocos RTT typekit plugin for PCL types"
HOMEPAGE="http://ros.org/wiki/rtt_pcl"
SRC_URI="https://github.com/orocos-gbp/${PN}-release/archive/release/kinetic/${PN}/0.1.0-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rtt
	sci-libs/pcl
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
