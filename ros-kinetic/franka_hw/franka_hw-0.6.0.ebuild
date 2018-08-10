# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="franka_hw provides hardware interfaces for using Franka Emika research robo[...]"
HOMEPAGE="http://wiki.ros.org/franka_hw"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/${PN}/0.6.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/controller_interface
	ros-kinetic/hardware_interface
	ros-kinetic/joint_limits_interface
	ros-kinetic/libfranka
	ros-kinetic/roscpp
	ros-kinetic/urdf
	test? ( ros-kinetic/franka_description )
	test? ( ros-kinetic/rostest )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
