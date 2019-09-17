# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Mechanical, kinematic and visual description\
  of the Pilz light weight ar[...]"
HOMEPAGE="https://wiki.ros.org/prbt_support"
SRC_URI="https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/${PN}/0.4.11-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/canopen_motor_node
	ros-kinetic/controller_manager
	ros-kinetic/joint_state_controller
	ros-kinetic/pilz_control
	ros-kinetic/prbt_hardware_support
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/rosservice
	ros-kinetic/topic_tools
	ros-kinetic/xacro
	test? ( ros-kinetic/cmake_modules )
	test? ( ros-kinetic/joint_state_publisher )
	test? ( ros-kinetic/moveit_core )
	test? ( ros-kinetic/moveit_ros_planning )
	test? ( ros-kinetic/prbt_hardware_support )
	test? ( ros-kinetic/roslaunch )
	test? ( ros-kinetic/rostest )
	test? ( ros-kinetic/rviz )
	test? ( dev-cpp/eigen )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
