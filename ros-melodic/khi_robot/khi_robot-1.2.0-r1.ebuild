# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Meta package for khi_robot"
HOMEPAGE="http://ros.org/wiki/khi_robot"
SRC_URI="https://github.com/Kawasaki-Robotics/${PN}-release/archive/release/melodic/${PN}/1.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/khi_duaro_description
	ros-melodic/khi_duaro_gazebo
	ros-melodic/khi_duaro_ikfast_plugin
	ros-melodic/khi_duaro_moveit_config
	ros-melodic/khi_robot_bringup
	ros-melodic/khi_robot_control
	ros-melodic/khi_robot_msgs
	ros-melodic/khi_rs007l_moveit_config
	ros-melodic/khi_rs007n_moveit_config
	ros-melodic/khi_rs080n_moveit_config
	ros-melodic/khi_rs_description
	ros-melodic/khi_rs_gazebo
	ros-melodic/khi_rs_ikfast_plugin
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
