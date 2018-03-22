# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Move Base Flex \(MBF\) is a backwards-compatible replacement for move_base.[...]"
HOMEPAGE="http://wiki.ros.org/move_base_flex"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/lunar/${PN}/0.1.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/mbf_abstract_core
	ros-lunar/mbf_abstract_nav
	ros-lunar/mbf_costmap_core
	ros-lunar/mbf_costmap_nav
	ros-lunar/mbf_msgs
	ros-lunar/mbf_simple_nav
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
