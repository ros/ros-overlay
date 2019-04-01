# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Meta package for khi_robot"
HOMEPAGE="http://ros.org/wiki/khi_robot"
SRC_URI="https://github.com/Kawasaki-Robotics/${PN}-release/archive/release/kinetic/${PN}/1.0.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/duaro_description
	ros-kinetic/duaro_gazebo
	ros-kinetic/duaro_ikfast_plugin
	ros-kinetic/duaro_moveit_config
	ros-kinetic/khi_robot_bringup
	ros-kinetic/khi_robot_control
	ros-kinetic/khi_robot_msgs
	ros-kinetic/rs007l_moveit_config
	ros-kinetic/rs007n_moveit_config
	ros-kinetic/rs080n_moveit_config
	ros-kinetic/rs_description
	ros-kinetic/rs_gazebo
	ros-kinetic/rs_ikfast_plugin
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
