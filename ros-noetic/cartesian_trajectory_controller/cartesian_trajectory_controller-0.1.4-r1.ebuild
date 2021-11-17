# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A Cartesian trajectory controller with multiple hardware interface support"
HOMEPAGE="http://wiki.ros.org/cartesian_trajectory_controller"
SRC_URI="https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/noetic/${PN}/0.1.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cartesian_interface
	ros-noetic/cartesian_trajectory_interpolation
	ros-noetic/controller_interface
	ros-noetic/controller_manager
	ros-noetic/hardware_interface
	ros-noetic/kdl_parser
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/speed_scaling_interface
	test? ( ros-noetic/actionlib )
	test? ( ros-noetic/actionlib_msgs )
	test? ( ros-noetic/control_msgs )
	test? ( ros-noetic/controller_manager_msgs )
	test? ( ros-noetic/joint_state_controller )
	test? ( ros-noetic/joint_trajectory_controller )
	test? ( ros-noetic/robot_state_publisher )
	test? ( ros-noetic/ros_control_boilerplate )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/trajectory_msgs )
	test? ( ros-noetic/xacro )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
