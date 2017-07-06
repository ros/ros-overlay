# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The baxter_ikfast_right_arm_plugin package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit_robots-release/archive/release/indigo/baxter_ikfast_right_arm_plugin/1.0.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cmake_modules
	ros-indigo/moveit_core
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/tf_conversions
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	virtual/lapack
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

