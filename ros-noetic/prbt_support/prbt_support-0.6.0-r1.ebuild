# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Mechanical, kinematic and visual description\
  of the Pilz light weight ar[...]"
HOMEPAGE="https://wiki.ros.org/prbt_support"
SRC_URI="https://github.com/PilzDE/pilz_robots-release/archive/release/noetic/${PN}/0.6.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/canopen_motor_node
	ros-noetic/controller_manager
	ros-noetic/joint_state_controller
	ros-noetic/pilz_control
	ros-noetic/pilz_status_indicator_rqt
	ros-noetic/prbt_hardware_support
	ros-noetic/robot_state_publisher
	ros-noetic/roscpp
	ros-noetic/rosservice
	ros-noetic/topic_tools
	ros-noetic/xacro
	test? ( ros-noetic/cmake_modules )
	test? ( ros-noetic/code_coverage )
	test? ( ros-noetic/joint_state_publisher )
	test? ( ros-noetic/moveit_core )
	test? ( ros-noetic/moveit_ros_planning )
	test? ( ros-noetic/pilz_testutils )
	test? ( ros-noetic/prbt_hardware_support )
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
	test? ( ros-noetic/rviz )
	test? ( dev-cpp/eigen )
"
DEPEND="${RDEPEND}
	ros-noetic/canopen_chain_node
	ros-noetic/catkin
	ros-noetic/pilz_utils
	ros-noetic/roslint
	ros-noetic/sensor_msgs
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
