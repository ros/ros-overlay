# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Launch files and scripts needed to bring a PR2 up into a running state"
HOMEPAGE="http://ros.org/wiki/pr2_bringup"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/indigo/pr2_bringup/1.6.23-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_aggregator
	ros-indigo/ethercat_trigger_controllers
	ros-indigo/hokuyo_node
	ros-indigo/joint_trajectory_action
	ros-indigo/joy
	ros-indigo/microstrain_3dmgx2_imu
	ros-indigo/ocean_battery_driver
	ros-indigo/power_monitor
	ros-indigo/pr2_calibration_controllers
	ros-indigo/pr2_camera_synchronizer
	ros-indigo/pr2_computer_monitor
	ros-indigo/pr2_controller_configuration
	ros-indigo/pr2_controller_manager
	ros-indigo/pr2_dashboard_aggregator
	ros-indigo/pr2_description
	ros-indigo/pr2_ethercat
	ros-indigo/pr2_gripper_action
	ros-indigo/pr2_head_action
	ros-indigo/pr2_machine
	ros-indigo/pr2_power_board
	ros-indigo/pr2_run_stop_auto_restart
	ros-indigo/prosilica_camera
	ros-indigo/robot_mechanism_controllers
	ros-indigo/robot_pose_ekf
	ros-indigo/robot_state_publisher
	ros-indigo/rosbag
	ros-indigo/single_joint_position_action
	ros-indigo/sound_play
	ros-indigo/std_srvs
	ros-indigo/stereo_image_proc
	ros-indigo/tf2_ros
	ros-indigo/wge100_camera
	ros-indigo/wifi_ddwrt
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

