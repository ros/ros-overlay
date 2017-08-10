# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Library of ros controllers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/ros_controllers/0.13.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/diff_drive_controller
	ros-lunar/effort_controllers
	ros-lunar/force_torque_sensor_controller
	ros-lunar/forward_command_controller
	ros-lunar/gripper_action_controller
	ros-lunar/imu_sensor_controller
	ros-lunar/joint_state_controller
	ros-lunar/joint_trajectory_controller
	ros-lunar/position_controllers
	ros-lunar/rqt_joint_trajectory_controller
	ros-lunar/velocity_controllers
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

