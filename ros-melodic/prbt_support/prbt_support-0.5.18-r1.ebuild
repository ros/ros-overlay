# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Mechanical, kinematic and visual description\
  of the Pilz light weight ar[...]"
HOMEPAGE="https://wiki.ros.org/prbt_support"
SRC_URI="https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/${PN}/0.5.18-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/canopen_motor_node
	ros-melodic/controller_manager
	ros-melodic/joint_state_controller
	ros-melodic/pilz_control
	ros-melodic/pilz_status_indicator_rqt
	ros-melodic/prbt_hardware_support
	ros-melodic/robot_state_publisher
	ros-melodic/roscpp
	ros-melodic/rosservice
	ros-melodic/topic_tools
	ros-melodic/xacro
	test? ( ros-melodic/cmake_modules )
	test? ( ros-melodic/code_coverage )
	test? ( ros-melodic/joint_state_publisher )
	test? ( ros-melodic/moveit_core )
	test? ( ros-melodic/moveit_ros_planning )
	test? ( ros-melodic/pilz_testutils )
	test? ( ros-melodic/prbt_hardware_support )
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	test? ( ros-melodic/rviz )
	test? ( dev-cpp/eigen )
"
DEPEND="${RDEPEND}
	ros-melodic/canopen_chain_node
	ros-melodic/catkin
	ros-melodic/pilz_utils
	ros-melodic/roslint
	ros-melodic/sensor_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
