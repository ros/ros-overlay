# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="YP-Spur is a mobile robot motion control software with coordinate frame bas[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/openspur/yp-spur-release/archive/release/melodic/${PN}/1.18.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/catkin
	sys-libs/readline
"
DEPEND="${RDEPEND}
	dev-util/cmake
	sys-libs/readline
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
