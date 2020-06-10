# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Move Base Flex \(MBF\) is a backwards-compatible replacement for move_base.[...]"
HOMEPAGE="http://wiki.ros.org/move_base_flex"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/noetic/${PN}/0.3.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/mbf_abstract_core
	ros-noetic/mbf_abstract_nav
	ros-noetic/mbf_costmap_core
	ros-noetic/mbf_costmap_nav
	ros-noetic/mbf_msgs
	ros-noetic/mbf_simple_nav
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
