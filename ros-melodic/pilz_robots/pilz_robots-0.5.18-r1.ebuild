# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The metapackage"
HOMEPAGE="http://ros.org/wiki/pilz_robots"
SRC_URI="https://github.com/PilzDE/${PN}-release/archive/release/melodic/${PN}/0.5.18-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/pilz_control
	ros-melodic/prbt_hardware_support
	ros-melodic/prbt_ikfast_manipulator_plugin
	ros-melodic/prbt_moveit_config
	ros-melodic/prbt_support
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
