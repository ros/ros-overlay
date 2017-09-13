# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package contains bringup scripts/config/tools for tra1 robto"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/minas-release/archive/release/indigo/tra1_bringup/1.0.6-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager
	ros-indigo/joint_state_controller
	ros-indigo/joint_trajectory_controller
	ros-indigo/minas_control
	ros-indigo/position_controllers
	ros-indigo/robot_state_publisher
	ros-indigo/tf
	ros-indigo/tra1_description
	ros-indigo/tra1_moveit_config
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
