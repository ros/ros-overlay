# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Library of ros controllers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/indigo/ros_controllers/0.9.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diff_drive_controller
	ros-indigo/effort_controllers
	ros-indigo/force_torque_sensor_controller
	ros-indigo/forward_command_controller
	ros-indigo/gripper_action_controller
	ros-indigo/imu_sensor_controller
	ros-indigo/joint_state_controller
	ros-indigo/joint_trajectory_controller
	ros-indigo/position_controllers
	ros-indigo/rqt_joint_trajectory_controller
	ros-indigo/velocity_controllers
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
