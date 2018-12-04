# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The metapackage"
HOMEPAGE="http://ros.org/wiki/pilz_robots"
SRC_URI="https://github.com/PilzDE/${PN}-release/archive/release/kinetic/${PN}/0.4.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/prbt_ikfast_manipulator_plugin
	ros-kinetic/prbt_moveit_config
	ros-kinetic/prbt_support
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
