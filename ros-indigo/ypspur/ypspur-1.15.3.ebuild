# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="YP-Spur is a mobile robot motion control software with coordinate frame bas[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/openspur/yp-spur-release/archive/release/indigo/${PN}/1.15.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	sys-libs/readline
"
DEPEND="${RDEPEND}
	dev-util/cmake
	sys-libs/readline
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
