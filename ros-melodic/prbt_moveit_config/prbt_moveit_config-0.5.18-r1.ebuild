# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="https://wiki.ros.org/prbt_moveit_config"
SRC_URI="https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/${PN}/0.5.18-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/joint_state_publisher
	ros-melodic/moveit_fake_controller_manager
	ros-melodic/moveit_kinematics
	ros-melodic/moveit_planners_ompl
	ros-melodic/moveit_ros_move_group
	ros-melodic/moveit_ros_visualization
	ros-melodic/moveit_simple_controller_manager
	ros-melodic/prbt_hardware_support
	ros-melodic/prbt_ikfast_manipulator_plugin
	ros-melodic/prbt_support
	ros-melodic/robot_state_publisher
	ros-melodic/rviz
	ros-melodic/xacro
	test? ( ros-melodic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
