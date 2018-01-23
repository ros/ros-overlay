# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="p"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/fanuc-release/archive/release/indigo/${PN}/0.4.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/fanuc_lrmate200ib_moveit_plugins
	ros-indigo/fanuc_lrmate200ib_support
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
	test? ( ros-indigo/roslaunch )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
