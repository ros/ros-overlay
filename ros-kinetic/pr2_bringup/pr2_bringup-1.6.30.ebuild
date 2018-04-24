# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Launch files and scripts needed to bring a PR2 up into a running state."
HOMEPAGE="http://ros.org/wiki/pr2_bringup"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/kinetic/${PN}/1.6.30-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_aggregator
	ros-kinetic/ethercat_trigger_controllers
	ros-kinetic/joint_trajectory_action
	ros-kinetic/joy
	ros-kinetic/microstrain_3dmgx2_imu
	ros-kinetic/ocean_battery_driver
	ros-kinetic/power_monitor
	ros-kinetic/pr2_calibration_controllers
	ros-kinetic/pr2_camera_synchronizer
	ros-kinetic/pr2_computer_monitor
	ros-kinetic/pr2_controller_configuration
	ros-kinetic/pr2_controller_manager
	ros-kinetic/pr2_dashboard_aggregator
	ros-kinetic/pr2_description
	ros-kinetic/pr2_ethercat
	ros-kinetic/pr2_gripper_action
	ros-kinetic/pr2_head_action
	ros-kinetic/pr2_machine
	ros-kinetic/pr2_power_board
	ros-kinetic/pr2_run_stop_auto_restart
	ros-kinetic/prosilica_camera
	ros-kinetic/robot_mechanism_controllers
	ros-kinetic/robot_pose_ekf
	ros-kinetic/robot_state_publisher
	ros-kinetic/rosbag
	ros-kinetic/single_joint_position_action
	ros-kinetic/sound_play
	ros-kinetic/std_srvs
	ros-kinetic/stereo_image_proc
	ros-kinetic/tf2_ros
	ros-kinetic/urg_node
	ros-kinetic/wge100_camera
	ros-kinetic/wifi_ddwrt
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
