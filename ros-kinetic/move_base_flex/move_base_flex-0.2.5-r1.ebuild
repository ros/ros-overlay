# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Move Base Flex \(MBF\) is a backwards-compatible replacement for move_base.[...]"
HOMEPAGE="http://wiki.ros.org/move_base_flex"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/kinetic/${PN}/0.2.5-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/mbf_abstract_core
	ros-kinetic/mbf_abstract_nav
	ros-kinetic/mbf_costmap_core
	ros-kinetic/mbf_costmap_nav
	ros-kinetic/mbf_msgs
	ros-kinetic/mbf_simple_nav
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
