# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Test package for khi_robot"
HOMEPAGE="http://ros.org/wiki/khi_robot"
SRC_URI="https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/${PN}/1.3.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/khi_robot_msgs
	ros-noetic/rospy
	test? ( ros-noetic/khi_duaro_moveit_config )
	test? ( ros-noetic/khi_robot_bringup )
	test? ( ros-noetic/khi_robot_control )
	test? ( ros-noetic/khi_robot_msgs )
	test? ( ros-noetic/khi_rs007l_moveit_config )
	test? ( ros-noetic/khi_rs007n_moveit_config )
	test? ( ros-noetic/khi_rs013n_moveit_config )
	test? ( ros-noetic/khi_rs080n_moveit_config )
	test? ( ros-noetic/moveit_commander )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
