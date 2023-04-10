# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The new driver for Universal Robots UR3, UR5 and UR10 robots with CB3 contr[...]"
HOMEPAGE="http://wiki.ros.org/ur_robot_driver"
SRC_URI="https://github.com/UniversalRobots/Universal_Robots_ROS_Driver-release/archive/release/melodic/${PN}/2.1.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD-2-Clause Zlib )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/cartesian_trajectory_controller
	ros-melodic/control_msgs
	ros-melodic/controller_manager
	ros-melodic/controller_manager_msgs
	ros-melodic/force_torque_sensor_controller
	ros-melodic/geometry_msgs
	ros-melodic/hardware_interface
	ros-melodic/industrial_robot_status_controller
	ros-melodic/joint_state_controller
	ros-melodic/joint_trajectory_controller
	ros-melodic/kdl_parser
	ros-melodic/pass_through_controllers
	ros-melodic/pluginlib
	ros-melodic/robot_state_publisher
	ros-melodic/roscpp
	ros-melodic/scaled_joint_trajectory_controller
	ros-melodic/sensor_msgs
	ros-melodic/speed_scaling_interface
	ros-melodic/speed_scaling_state_controller
	ros-melodic/std_srvs
	ros-melodic/tf
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_msgs
	ros-melodic/trajectory_msgs
	ros-melodic/twist_controller
	ros-melodic/ur_client_library
	ros-melodic/ur_dashboard_msgs
	ros-melodic/ur_description
	ros-melodic/ur_msgs
	ros-melodic/velocity_controllers
	test? ( ros-melodic/rostest )
	net-misc/socat
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/industrial_robot_status_interface
	dev-libs/boost[python]
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
