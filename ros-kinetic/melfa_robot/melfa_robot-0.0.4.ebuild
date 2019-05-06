# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The melfa_robot meta package"
HOMEPAGE="http://wiki.ros.org/melfa_robot"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/kinetic/${PN}/0.0.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 CC-BY-SA )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/melfa_description
	ros-kinetic/melfa_driver
	ros-kinetic/rv4fl_moveit_config
	ros-kinetic/rv7fl_moveit_config
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
