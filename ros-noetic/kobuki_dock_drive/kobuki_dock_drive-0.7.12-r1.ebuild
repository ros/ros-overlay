# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Dock driving library for Kobuki. Users owning a docking station for Kobuki [...]"
HOMEPAGE="http://ros.org/wiki/kobuki_dock_drive"
SRC_URI="https://github.com/yujinrobot-release/kobuki_core-release/archive/release/noetic/${PN}/0.7.12-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/ecl_geometry
	ros-noetic/ecl_linear_algebra
	ros-noetic/ecl_threads
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/ecl_build
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
