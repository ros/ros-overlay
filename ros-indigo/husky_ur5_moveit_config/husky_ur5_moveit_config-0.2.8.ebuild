# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="http://ros.org/wiki/husky_ur5_moveit_config"
SRC_URI="https://github.com/clearpath-gbp/husky-release/archive/release/indigo/${PN}/0.2.8-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/joint_state_publisher
	ros-indigo/moveit_planners
	ros-indigo/moveit_planners_ompl
	ros-indigo/moveit_plugins
	ros-indigo/moveit_ros_benchmarks
	ros-indigo/moveit_ros_move_group
	ros-indigo/moveit_ros_visualization
	ros-indigo/moveit_ros_warehouse
	ros-indigo/moveit_setup_assistant
	ros-indigo/robot_state_publisher
	ros-indigo/rviz
	ros-indigo/ur_kinematics
	ros-indigo/warehouse_ros
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
