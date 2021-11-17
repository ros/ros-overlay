# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="PRBT support for Schunk pg70 gripper."
HOMEPAGE="https://wiki.ros.org/prbt_pg70_support"
SRC_URI="https://github.com/PilzDE/prbt_grippers-release/archive/release/noetic/${PN}/0.0.5-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/prbt_ikfast_manipulator_plugin
	ros-noetic/prbt_moveit_config
	ros-noetic/prbt_support
	ros-noetic/schunk_description
	ros-noetic/xacro
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
