# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch files and scripts needed to bring a PR2 up into a running state."
HOMEPAGE="http://ros.org/wiki/pr2_bringup"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/melodic/${PN}/1.6.31-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_aggregator
	ros-melodic/ethercat_trigger_controllers
	ros-melodic/imu_monitor
	ros-melodic/joint_trajectory_action
	ros-melodic/joy
	ros-melodic/microstrain_3dmgx2_imu
	ros-melodic/ocean_battery_driver
	ros-melodic/power_monitor
	ros-melodic/pr2_calibration_controllers
	ros-melodic/pr2_camera_synchronizer
	ros-melodic/pr2_computer_monitor
	ros-melodic/pr2_controller_configuration
	ros-melodic/pr2_controller_manager
	ros-melodic/pr2_dashboard_aggregator
	ros-melodic/pr2_description
	ros-melodic/pr2_ethercat
	ros-melodic/pr2_gripper_action
	ros-melodic/pr2_head_action
	ros-melodic/pr2_machine
	ros-melodic/pr2_power_board
	ros-melodic/pr2_run_stop_auto_restart
	ros-melodic/prosilica_camera
	ros-melodic/robot_mechanism_controllers
	ros-melodic/robot_pose_ekf
	ros-melodic/robot_state_publisher
	ros-melodic/rosbag
	ros-melodic/single_joint_position_action
	ros-melodic/sound_play
	ros-melodic/std_srvs
	ros-melodic/stereo_image_proc
	ros-melodic/tf2_ros
	ros-melodic/urg_node
	ros-melodic/wge100_camera
	ros-melodic/wifi_ddwrt
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
