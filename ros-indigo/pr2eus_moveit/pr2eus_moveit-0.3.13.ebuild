# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="pr2eus_moveit"
HOMEPAGE="http://ros.org/wiki/pr2eus_moveit"
SRC_URI="https://github.com/tork-a/jsk_pr2eus-release/archive/release/indigo/pr2eus_moveit/0.3.13-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/control_msgs
	ros-indigo/moveit_msgs
	ros-indigo/pr2eus
	ros-indigo/roseus
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
