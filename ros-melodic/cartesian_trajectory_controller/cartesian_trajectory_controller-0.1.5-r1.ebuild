# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A Cartesian trajectory controller with multiple hardware interface support"
HOMEPAGE="http://wiki.ros.org/cartesian_trajectory_controller"
SRC_URI="https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/melodic/${PN}/0.1.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/cartesian_interface
	ros-melodic/cartesian_trajectory_interpolation
	ros-melodic/controller_interface
	ros-melodic/controller_manager
	ros-melodic/hardware_interface
	ros-melodic/kdl_parser
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/speed_scaling_interface
	test? ( ros-melodic/actionlib )
	test? ( ros-melodic/actionlib_msgs )
	test? ( ros-melodic/control_msgs )
	test? ( ros-melodic/controller_manager_msgs )
	test? ( ros-melodic/joint_state_controller )
	test? ( ros-melodic/joint_trajectory_controller )
	test? ( ros-melodic/robot_state_publisher )
	test? ( ros-melodic/ros_control_boilerplate )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/trajectory_msgs )
	test? ( ros-melodic/xacro )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
