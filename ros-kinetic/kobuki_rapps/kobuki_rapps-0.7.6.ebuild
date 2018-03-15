# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Robot apps for Kobuki"
HOMEPAGE="http://ros.org/wiki/kobuki_rapps"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/${PN}/0.7.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/kobuki_auto_docking
	ros-kinetic/kobuki_random_walker
	ros-kinetic/nodelet
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
