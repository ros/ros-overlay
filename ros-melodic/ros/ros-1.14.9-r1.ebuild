# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS packaging system"
HOMEPAGE="http://www.ros.org/wiki/ROS"
SRC_URI="https://github.com/${PN}-gbp/${PN}-release/archive/release/melodic/${PN}/1.14.9-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/catkin
	ros-melodic/mk
	ros-melodic/rosbash
	ros-melodic/rosboost_cfg
	ros-melodic/rosbuild
	ros-melodic/rosclean
	ros-melodic/roscreate
	ros-melodic/roslang
	ros-melodic/roslib
	ros-melodic/rosmake
	ros-melodic/rosunit
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
