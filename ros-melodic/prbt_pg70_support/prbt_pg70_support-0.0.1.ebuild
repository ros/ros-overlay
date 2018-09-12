# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="PRBT support for Schunk pg70 gripper."
HOMEPAGE="https://wiki.ros.org/prbt_pg70_support"
SRC_URI="https://github.com/PilzDE/prbt_grippers-release/archive/release/melodic/${PN}/0.0.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/prbt_ikfast_manipulator_plugin
	ros-melodic/prbt_moveit_config
	ros-melodic/prbt_support
	ros-melodic/schunk_description
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
