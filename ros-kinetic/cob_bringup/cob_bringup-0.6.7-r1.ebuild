# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides launch files for operating Care-O-bot."
HOMEPAGE="http://ros.org/wiki/cob_bringup"
SRC_URI="https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_bringup/0.6.7-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/canopen_chain_node
	ros-kinetic/canopen_motor_node
	ros-kinetic/cob_android_script_server
	ros-kinetic/cob_base_drive_chain
	ros-kinetic/cob_base_velocity_smoother
	ros-kinetic/cob_bms_driver
	ros-kinetic/cob_calibration_data
	ros-kinetic/cob_cam3d_throttle
	ros-kinetic/cob_collision_monitor
	ros-kinetic/cob_collision_velocity_filter
	ros-kinetic/cob_command_gui
	ros-kinetic/cob_control_mode_adapter
	ros-kinetic/cob_dashboard
	ros-kinetic/cob_default_env_config
	ros-kinetic/cob_default_robot_behavior
	ros-kinetic/cob_default_robot_config
	ros-kinetic/cob_docker_control
	ros-kinetic/cob_footprint_observer
	ros-kinetic/cob_frame_tracker
	ros-kinetic/cob_hand_bridge
	ros-kinetic/cob_hardware_config
	ros-kinetic/cob_helper_tools
	ros-kinetic/cob_image_flip
	ros-kinetic/cob_light
	ros-kinetic/cob_linear_nav
	ros-kinetic/cob_mimic
	ros-kinetic/cob_monitoring
	ros-kinetic/cob_moveit_config
	ros-kinetic/cob_obstacle_distance
	ros-kinetic/cob_omni_drive_controller
	ros-kinetic/cob_phidget_em_state
	ros-kinetic/cob_phidget_power_state
	ros-kinetic/cob_phidgets
	ros-kinetic/cob_reflector_referencing
	ros-kinetic/cob_relayboard
	ros-kinetic/cob_safety_controller
	ros-kinetic/cob_scan_unifier
	ros-kinetic/cob_script_server
	ros-kinetic/cob_sick_lms1xx
	ros-kinetic/cob_sick_s300
	ros-kinetic/cob_sound
	ros-kinetic/cob_teleop
	ros-kinetic/cob_trajectory_controller
	ros-kinetic/cob_twist_controller
	ros-kinetic/cob_undercarriage_ctrl
	ros-kinetic/cob_voltage_control
	ros-kinetic/compressed_depth_image_transport
	ros-kinetic/compressed_image_transport
	ros-kinetic/controller_manager
	ros-kinetic/costmap_2d
	ros-kinetic/diagnostic_aggregator
	ros-kinetic/image_proc
	ros-kinetic/joint_state_controller
	ros-kinetic/joint_state_publisher
	ros-kinetic/joint_trajectory_controller
	ros-kinetic/joy
	ros-kinetic/laser_filters
	ros-kinetic/nodelet
	ros-kinetic/openni2_launch
	ros-kinetic/openni_launch
	ros-kinetic/position_controllers
	ros-kinetic/realsense_camera
	ros-kinetic/robot_state_publisher
	ros-kinetic/roslaunch
	ros-kinetic/rosserial_python
	ros-kinetic/rosserial_server
	ros-kinetic/rostopic
	ros-kinetic/rplidar_ros
	ros-kinetic/rviz
	ros-kinetic/schunk_powercube_chain
	ros-kinetic/sick_visionary_t_driver
	ros-kinetic/spacenav_node
	ros-kinetic/tf2_ros
	ros-kinetic/theora_image_transport
	ros-kinetic/topic_tools
	ros-kinetic/twist_mux
	ros-kinetic/ur_driver
	ros-kinetic/usb_cam
	ros-kinetic/velocity_controllers
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

