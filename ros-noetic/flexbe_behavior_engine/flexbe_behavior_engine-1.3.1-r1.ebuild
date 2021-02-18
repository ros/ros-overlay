# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="A meta-package to aggregate all the FlexBE packages"
HOMEPAGE="http://ros.org/wiki/flexbe"
SRC_URI="https://github.com/FlexBE/${PN}-release/archive/release/noetic/${PN}/1.3.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/flexbe_core
	ros-noetic/flexbe_input
	ros-noetic/flexbe_mirror
	ros-noetic/flexbe_msgs
	ros-noetic/flexbe_onboard
	ros-noetic/flexbe_states
	ros-noetic/flexbe_testing
	ros-noetic/flexbe_widget
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
