# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS KHI robot controller package based on ros_control"
HOMEPAGE="http://ros.org/wiki/khi_robot"
SRC_URI="https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/${PN}/1.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/controller_manager
	ros-melodic/diagnostic_updater
	ros-melodic/hardware_interface
	ros-melodic/joint_limits_interface
	ros-melodic/joint_state_controller
	ros-melodic/joint_trajectory_controller
	ros-melodic/khi_robot_msgs
	ros-melodic/position_controllers
	ros-melodic/trajectory_msgs
	ros-melodic/transmission_interface
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/realtime_tools
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
