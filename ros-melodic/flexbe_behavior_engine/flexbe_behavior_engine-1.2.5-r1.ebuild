# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A meta-package to aggregate all the FlexBE packages"
HOMEPAGE="http://ros.org/wiki/flexbe"
SRC_URI="https://github.com/FlexBE/${PN}-release/archive/release/melodic/${PN}/1.2.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/flexbe_core
	ros-melodic/flexbe_input
	ros-melodic/flexbe_mirror
	ros-melodic/flexbe_msgs
	ros-melodic/flexbe_onboard
	ros-melodic/flexbe_states
	ros-melodic/flexbe_testing
	ros-melodic/flexbe_widget
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
