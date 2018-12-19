# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A meta-package to aggregate all the FlexBE packages"
HOMEPAGE="http://ros.org/wiki/flexbe"
SRC_URI="https://github.com/FlexBE/${PN}-release/archive/release/indigo/${PN}/1.1.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/flexbe_core
	ros-indigo/flexbe_input
	ros-indigo/flexbe_mirror
	ros-indigo/flexbe_msgs
	ros-indigo/flexbe_onboard
	ros-indigo/flexbe_states
	ros-indigo/flexbe_testing
	ros-indigo/flexbe_widget
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
