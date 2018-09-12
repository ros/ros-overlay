# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="roch Project"
HOMEPAGE="http://ros.org/wiki/roch"
SRC_URI="https://github.com/SawYerRobotics-release/${PN}-release/archive/release/indigo/${PN}/1.0.17-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/roch_bringup
	ros-indigo/roch_follower
	ros-indigo/roch_navigation
	ros-indigo/roch_teleop
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
