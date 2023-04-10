# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Provides real-time manipulator Cartesian and joint servoing."
HOMEPAGE="https://ros-planning.github.io/moveit_tutorials"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/foxy/${PN}/2.2.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/control_msgs
	ros-foxy/control_toolbox
	ros-foxy/geometry_msgs
	ros-foxy/gripper_controllers
	ros-foxy/joint_state_broadcaster
	ros-foxy/joint_trajectory_controller
	ros-foxy/joy
	ros-foxy/moveit_msgs
	ros-foxy/moveit_ros_planning_interface
	ros-foxy/robot_state_publisher
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/std_srvs
	ros-foxy/tf2_eigen
	ros-foxy/tf2_ros
	ros-foxy/trajectory_msgs
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/moveit_resources_panda_moveit_config )
	test? ( ros-foxy/ros_testing )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/moveit_common
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
