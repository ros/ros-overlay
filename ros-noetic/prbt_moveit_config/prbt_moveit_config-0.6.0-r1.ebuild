# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="https://wiki.ros.org/prbt_moveit_config"
SRC_URI="https://github.com/PilzDE/pilz_robots-release/archive/release/noetic/${PN}/0.6.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/joint_state_publisher
	ros-noetic/moveit_fake_controller_manager
	ros-noetic/moveit_kinematics
	ros-noetic/moveit_planners_ompl
	ros-noetic/moveit_ros_move_group
	ros-noetic/moveit_ros_visualization
	ros-noetic/moveit_simple_controller_manager
	ros-noetic/prbt_hardware_support
	ros-noetic/prbt_ikfast_manipulator_plugin
	ros-noetic/prbt_support
	ros-noetic/robot_state_publisher
	ros-noetic/rviz
	ros-noetic/xacro
	test? ( ros-noetic/moveit_core )
	test? ( ros-noetic/moveit_ros_planning )
	test? ( ros-noetic/pluginlib )
	test? ( ros-noetic/roscpp )
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
