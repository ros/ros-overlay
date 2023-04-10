# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The log_view package provides a ncurses based terminal GUI for\
	viewing[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/hatchbed/${PN}-release/archive/release/melodic/${PN}/0.1.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/roscpp
	sys-libs/ncurses
	x11-misc/xclip
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
