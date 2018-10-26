# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Library of ros controllers"
HOMEPAGE="http://ros.org/wiki/ros_controllers"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.14.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diff_drive_controller
	ros-melodic/effort_controllers
	ros-melodic/force_torque_sensor_controller
	ros-melodic/forward_command_controller
	ros-melodic/gripper_action_controller
	ros-melodic/imu_sensor_controller
	ros-melodic/joint_state_controller
	ros-melodic/joint_trajectory_controller
	ros-melodic/position_controllers
	ros-melodic/rqt_joint_trajectory_controller
	ros-melodic/velocity_controllers
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
