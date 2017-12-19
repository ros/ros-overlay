# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package contains bringup scripts/config/tools for tra1 robto"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/minas-release/archive/release/kinetic/${PN}/1.0.7-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/joint_state_controller
	ros-kinetic/joint_trajectory_controller
	ros-kinetic/minas_control
	ros-kinetic/position_controllers
	ros-kinetic/robot_state_publisher
	ros-kinetic/tf
	ros-kinetic/tra1_description
	ros-kinetic/tra1_moveit_config
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
