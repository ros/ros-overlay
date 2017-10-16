# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="p"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/fanuc-release/archive/release/indigo/fanuc_m20ia10l_moveit_config/0.4.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/fanuc_m20ia_moveit_plugins
	ros-indigo/fanuc_m20ia_support
	ros-indigo/industrial_robot_simulator
	ros-indigo/joint_state_publisher
	ros-indigo/moveit_fake_controller_manager
	ros-indigo/moveit_planners_ompl
	ros-indigo/moveit_ros_move_group
	ros-indigo/moveit_ros_visualization
	ros-indigo/moveit_ros_warehouse
	ros-indigo/moveit_simple_controller_manager
	ros-indigo/robot_state_publisher
	ros-indigo/rviz
	ros-indigo/warehouse_ros
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
