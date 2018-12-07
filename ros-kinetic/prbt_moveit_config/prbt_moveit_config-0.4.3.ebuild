# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="https://wiki.ros.org/prbt_moveit_config"
SRC_URI="https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/${PN}/0.4.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/joint_state_publisher
	ros-kinetic/moveit_fake_controller_manager
	ros-kinetic/moveit_kinematics
	ros-kinetic/moveit_planners_ompl
	ros-kinetic/moveit_ros_move_group
	ros-kinetic/moveit_ros_visualization
	ros-kinetic/moveit_simple_controller_manager
	ros-kinetic/prbt_support
	ros-kinetic/robot_state_publisher
	ros-kinetic/ros_control
	ros-kinetic/ros_controllers
	ros-kinetic/rviz
	ros-kinetic/xacro
	test? ( ros-kinetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
