# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Metapackage that contains common tutorials"
HOMEPAGE="http://ros.org/wiki/common_tutorials"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.1.11-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib_tutorials
	ros-melodic/nodelet_tutorial_math
	ros-melodic/pluginlib_tutorials
	ros-melodic/turtle_actionlib
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
