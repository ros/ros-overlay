# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="mini_maxwell"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/indigo/${PN}/2.1.6-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dynamic_reconfigure
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/roslib
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
