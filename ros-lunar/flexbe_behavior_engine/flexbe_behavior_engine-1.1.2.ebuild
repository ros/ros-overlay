# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A meta-package to aggregate all the FlexBE packages"
HOMEPAGE="http://ros.org/wiki/flexbe"
SRC_URI="https://github.com/FlexBE/${PN}-release/archive/release/lunar/${PN}/1.1.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/flexbe_core
	ros-lunar/flexbe_input
	ros-lunar/flexbe_mirror
	ros-lunar/flexbe_msgs
	ros-lunar/flexbe_onboard
	ros-lunar/flexbe_states
	ros-lunar/flexbe_testing
	ros-lunar/flexbe_widget
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
