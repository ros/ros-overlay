# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="franka_hw provides hardware interfaces for using Franka Emika research robo[...]"
HOMEPAGE="http://wiki.ros.org/franka_hw"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/melodic/${PN}/0.6.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/controller_interface
	ros-melodic/hardware_interface
	ros-melodic/joint_limits_interface
	ros-melodic/libfranka
	ros-melodic/roscpp
	ros-melodic/urdf
	test? ( ros-melodic/franka_description )
	test? ( ros-melodic/rostest )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
