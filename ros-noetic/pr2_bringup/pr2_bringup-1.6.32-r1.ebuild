# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Launch files and scripts needed to bring a PR2 up into a running state."
HOMEPAGE="http://ros.org/wiki/pr2_bringup"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/noetic/${PN}/1.6.32-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_aggregator
	ros-noetic/ethercat_trigger_controllers
	ros-noetic/imu_monitor
	ros-noetic/joint_trajectory_action
	ros-noetic/joy
	ros-noetic/microstrain_3dmgx2_imu
	ros-noetic/ocean_battery_driver
	ros-noetic/power_monitor
	ros-noetic/pr2_calibration_controllers
	ros-noetic/pr2_camera_synchronizer
	ros-noetic/pr2_computer_monitor
	ros-noetic/pr2_controller_configuration
	ros-noetic/pr2_controller_manager
	ros-noetic/pr2_dashboard_aggregator
	ros-noetic/pr2_description
	ros-noetic/pr2_ethercat
	ros-noetic/pr2_gripper_action
	ros-noetic/pr2_head_action
	ros-noetic/pr2_machine
	ros-noetic/pr2_power_board
	ros-noetic/pr2_run_stop_auto_restart
	ros-noetic/prosilica_camera
	ros-noetic/robot_mechanism_controllers
	ros-noetic/robot_pose_ekf
	ros-noetic/robot_state_publisher
	ros-noetic/rosbag
	ros-noetic/single_joint_position_action
	ros-noetic/sound_play
	ros-noetic/std_srvs
	ros-noetic/stereo_image_proc
	ros-noetic/tf2_ros
	ros-noetic/urg_node
	ros-noetic/wge100_camera
	ros-noetic/wifi_ddwrt
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslaunch
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
