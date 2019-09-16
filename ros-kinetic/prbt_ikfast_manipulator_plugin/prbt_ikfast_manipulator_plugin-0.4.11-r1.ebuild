# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The prbt_ikfast_manipulator_plugin package"
HOMEPAGE="https://wiki.ros.org/prbt_ikfast_manipulator_plugin"
SRC_URI="https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/${PN}/0.4.11-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/moveit_core
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/tf2_kdl
	test? ( ros-kinetic/code_coverage )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rosunit )
	virtual/lapack
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
