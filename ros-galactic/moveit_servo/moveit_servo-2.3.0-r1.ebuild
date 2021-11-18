# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Provides real-time manipulator Cartesian and joint servoing."
HOMEPAGE="https://ros-planning.github.io/moveit_tutorials"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/galactic/${PN}/2.3.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/control_msgs
	ros-galactic/control_toolbox
	ros-galactic/geometry_msgs
	ros-galactic/gripper_controllers
	ros-galactic/joint_state_broadcaster
	ros-galactic/joint_trajectory_controller
	ros-galactic/joy
	ros-galactic/moveit_msgs
	ros-galactic/moveit_ros_planning_interface
	ros-galactic/robot_state_publisher
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	ros-galactic/tf2_eigen
	ros-galactic/tf2_ros
	ros-galactic/trajectory_msgs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/moveit_resources_panda_moveit_config )
	test? ( ros-galactic/ros_testing )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/moveit_common
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
