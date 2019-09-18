# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A meta-package to aggregate all the FlexBE packages"
HOMEPAGE="http://ros.org/wiki/flexbe"
SRC_URI="https://github.com/FlexBE/${PN}-release/archive/release/kinetic/${PN}/1.2.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/flexbe_core
	ros-kinetic/flexbe_input
	ros-kinetic/flexbe_mirror
	ros-kinetic/flexbe_msgs
	ros-kinetic/flexbe_onboard
	ros-kinetic/flexbe_states
	ros-kinetic/flexbe_testing
	ros-kinetic/flexbe_widget
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
