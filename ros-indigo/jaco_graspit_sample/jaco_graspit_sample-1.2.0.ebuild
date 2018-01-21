# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Sample graspit files for jaco. Only\
	is a ROS package so it can be foun[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/JenniferBuehler/graspit-pkgs-release/archive/release/indigo/${PN}/1.2.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
