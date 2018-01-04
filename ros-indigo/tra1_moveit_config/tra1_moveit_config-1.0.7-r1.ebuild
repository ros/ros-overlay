# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/minas-release/archive/release/indigo/${PN}/1.0.7-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/joint_state_publisher
	ros-indigo/joy
	ros-indigo/moveit_fake_controller_manager
	ros-indigo/moveit_kinematics
	ros-indigo/moveit_planners_ompl
	ros-indigo/moveit_ros_move_group
	ros-indigo/moveit_ros_visualization
	ros-indigo/moveit_ros_warehouse
	ros-indigo/moveit_simple_controller_manager
	ros-indigo/robot_state_publisher
	ros-indigo/rviz
	ros-indigo/tra1_description
	ros-indigo/warehouse_ros
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
