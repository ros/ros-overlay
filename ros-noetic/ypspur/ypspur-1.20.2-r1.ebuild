# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="YP-Spur is a mobile robot motion control software with coordinate frame bas[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/openspur/yp-spur-release/archive/release/noetic/${PN}/1.20.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/catkin
	sys-libs/readline
"
DEPEND="${RDEPEND}
	dev-util/cmake
	sys-libs/readline
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
