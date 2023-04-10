# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pincher_arm metapackage."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fictionlab-gbp/${PN}-release/archive/release/melodic/${PN}/0.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/pincher_arm_bringup
	ros-melodic/pincher_arm_description
	ros-melodic/pincher_arm_ikfast_plugin
	ros-melodic/pincher_arm_moveit_config
	ros-melodic/pincher_arm_moveit_demos
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
