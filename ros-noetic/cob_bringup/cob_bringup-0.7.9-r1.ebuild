# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides launch files for operating Care-O-bot."
HOMEPAGE="http://ros.org/wiki/cob_bringup"
SRC_URI="https://github.com/ipa320/cob_robots-release/archive/release/noetic/${PN}/0.7.9-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/canopen_chain_node
	ros-noetic/canopen_motor_node
	ros-noetic/cob_android_script_server
	ros-noetic/cob_base_controller_utils
	ros-noetic/cob_base_velocity_smoother
	ros-noetic/cob_bms_driver
	ros-noetic/cob_calibration_data
	ros-noetic/cob_cam3d_throttle
	ros-noetic/cob_collision_monitor
	ros-noetic/cob_collision_velocity_filter
	ros-noetic/cob_command_gui
	ros-noetic/cob_control_mode_adapter
	ros-noetic/cob_dashboard
	ros-noetic/cob_default_env_config
	ros-noetic/cob_default_robot_behavior
	ros-noetic/cob_default_robot_config
	ros-noetic/cob_docker_control
	ros-noetic/cob_frame_tracker
	ros-noetic/cob_hand_bridge
	ros-noetic/cob_hardware_config
	ros-noetic/cob_helper_tools
	ros-noetic/cob_image_flip
	ros-noetic/cob_light
	ros-noetic/cob_linear_nav
	ros-noetic/cob_mecanum_controller
	ros-noetic/cob_mimic
	ros-noetic/cob_monitoring
	ros-noetic/cob_moveit_config
	ros-noetic/cob_obstacle_distance
	ros-noetic/cob_omni_drive_controller
	ros-noetic/cob_phidget_em_state
	ros-noetic/cob_phidget_power_state
	ros-noetic/cob_phidgets
	ros-noetic/cob_reflector_referencing
	ros-noetic/cob_safety_controller
	ros-noetic/cob_scan_unifier
	ros-noetic/cob_script_server
	ros-noetic/cob_sick_lms1xx
	ros-noetic/cob_sick_s300
	ros-noetic/cob_sound
	ros-noetic/cob_teleop
	ros-noetic/cob_twist_controller
	ros-noetic/cob_voltage_control
	ros-noetic/compressed_depth_image_transport
	ros-noetic/compressed_image_transport
	ros-noetic/controller_manager
	ros-noetic/costmap_2d
	ros-noetic/diagnostic_aggregator
	ros-noetic/generic_throttle
	ros-noetic/image_proc
	ros-noetic/joint_state_controller
	ros-noetic/joint_state_publisher
	ros-noetic/joint_trajectory_controller
	ros-noetic/joy
	ros-noetic/laser_filters
	ros-noetic/nodelet
	ros-noetic/openni2_launch
	ros-noetic/position_controllers
	ros-noetic/realsense2_camera
	ros-noetic/rgbd_launch
	ros-noetic/robot_state_publisher
	ros-noetic/rosserial_python
	ros-noetic/rosserial_server
	ros-noetic/rostopic
	ros-noetic/rviz
	ros-noetic/spacenav_node
	ros-noetic/tf2_ros
	ros-noetic/theora_image_transport
	ros-noetic/topic_tools
	ros-noetic/twist_mux
	ros-noetic/usb_cam
	ros-noetic/velocity_controllers
	test? ( ros-noetic/cob_supported_robots )
	test? ( ros-noetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
