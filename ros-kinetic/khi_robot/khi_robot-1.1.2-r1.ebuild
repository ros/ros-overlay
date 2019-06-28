# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Meta package for khi_robot"
HOMEPAGE="http://ros.org/wiki/khi_robot"
SRC_URI="https://github.com/Kawasaki-Robotics/${PN}-release/archive/release/kinetic/${PN}/1.1.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/khi_duaro_description
	ros-kinetic/khi_duaro_gazebo
	ros-kinetic/khi_duaro_ikfast_plugin
	ros-kinetic/khi_duaro_moveit_config
	ros-kinetic/khi_robot_bringup
	ros-kinetic/khi_robot_control
	ros-kinetic/khi_robot_msgs
	ros-kinetic/khi_rs007l_moveit_config
	ros-kinetic/khi_rs007n_moveit_config
	ros-kinetic/khi_rs080n_moveit_config
	ros-kinetic/khi_rs_description
	ros-kinetic/khi_rs_gazebo
	ros-kinetic/khi_rs_ikfast_plugin
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
