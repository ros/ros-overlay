# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="rosbuild contains scripts for managing the CMake-based build system for ROS."
HOMEPAGE="http://ros.org/wiki/rosbuild"
SRC_URI="https://github.com/ros-gbp/ros-release/archive/release/noetic/${PN}/1.15.8-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/message_runtime
"
DEPEND="${RDEPEND}
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
