# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS package suite for the lunar rovers at Hakuto project, a Google Lunar XPRIZE "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/hakuto-release/archive/release/indigo/hakuto/0.1.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/tetris_description
	ros-indigo/tetris_gazebo
	ros-indigo/tetris_launch
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

