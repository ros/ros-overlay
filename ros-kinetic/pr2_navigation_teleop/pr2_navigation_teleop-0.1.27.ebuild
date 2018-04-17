# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package holds a special teleop configuration for the PR2 robot that\
 [...]"
HOMEPAGE="http://ros.org/wiki/pr2_navigation_teleop"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/${PN}/0.1.27-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/pr2_machine
	ros-kinetic/pr2_teleop
	ros-kinetic/topic_tools
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
