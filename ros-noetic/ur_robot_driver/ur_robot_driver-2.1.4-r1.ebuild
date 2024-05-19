# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The new driver for Universal Robots UR3, UR5 and UR10 robots with CB3 contr[...]"
HOMEPAGE="http://wiki.ros.org/ur_robot_driver"
SRC_URI="https://github.com/UniversalRobots/Universal_Robots_ROS_Driver-release/archive/release/noetic/${PN}/2.1.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD-2 Zlib )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/cartesian_trajectory_controller
	ros-noetic/control_msgs
	ros-noetic/controller_manager
	ros-noetic/controller_manager_msgs
	ros-noetic/force_torque_sensor_controller
	ros-noetic/geometry_msgs
	ros-noetic/hardware_interface
	ros-noetic/industrial_robot_status_controller
	ros-noetic/joint_state_controller
	ros-noetic/joint_trajectory_controller
	ros-noetic/kdl_parser
	ros-noetic/pass_through_controllers
	ros-noetic/pluginlib
	ros-noetic/robot_state_publisher
	ros-noetic/roscpp
	ros-noetic/scaled_joint_trajectory_controller
	ros-noetic/sensor_msgs
	ros-noetic/speed_scaling_interface
	ros-noetic/speed_scaling_state_controller
	ros-noetic/std_srvs
	ros-noetic/tf
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_msgs
	ros-noetic/trajectory_msgs
	ros-noetic/twist_controller
	ros-noetic/ur_client_library
	ros-noetic/ur_dashboard_msgs
	ros-noetic/ur_description
	ros-noetic/ur_msgs
	ros-noetic/velocity_controllers
	test? ( ros-noetic/rostest )
	net-misc/socat
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/industrial_robot_status_interface
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
