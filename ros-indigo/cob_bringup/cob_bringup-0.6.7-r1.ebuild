# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides launch files for operating Care-O-bot."
HOMEPAGE="http://ros.org/wiki/cob_bringup"
SRC_URI="https://github.com/ipa320/cob_robots-release/archive/release/indigo/cob_bringup/0.6.7-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/canopen_chain_node
	ros-indigo/canopen_motor_node
	ros-indigo/cob_android_script_server
	ros-indigo/cob_base_drive_chain
	ros-indigo/cob_base_velocity_smoother
	ros-indigo/cob_bms_driver
	ros-indigo/cob_calibration_data
	ros-indigo/cob_cam3d_throttle
	ros-indigo/cob_collision_monitor
	ros-indigo/cob_collision_velocity_filter
	ros-indigo/cob_command_gui
	ros-indigo/cob_control_mode_adapter
	ros-indigo/cob_dashboard
	ros-indigo/cob_default_env_config
	ros-indigo/cob_default_robot_behavior
	ros-indigo/cob_default_robot_config
	ros-indigo/cob_docker_control
	ros-indigo/cob_footprint_observer
	ros-indigo/cob_frame_tracker
	ros-indigo/cob_hand_bridge
	ros-indigo/cob_hardware_config
	ros-indigo/cob_helper_tools
	ros-indigo/cob_image_flip
	ros-indigo/cob_light
	ros-indigo/cob_linear_nav
	ros-indigo/cob_mimic
	ros-indigo/cob_monitoring
	ros-indigo/cob_moveit_config
	ros-indigo/cob_obstacle_distance
	ros-indigo/cob_omni_drive_controller
	ros-indigo/cob_phidget_em_state
	ros-indigo/cob_phidget_power_state
	ros-indigo/cob_phidgets
	ros-indigo/cob_reflector_referencing
	ros-indigo/cob_relayboard
	ros-indigo/cob_safety_controller
	ros-indigo/cob_scan_unifier
	ros-indigo/cob_script_server
	ros-indigo/cob_sick_lms1xx
	ros-indigo/cob_sick_s300
	ros-indigo/cob_sound
	ros-indigo/cob_teleop
	ros-indigo/cob_trajectory_controller
	ros-indigo/cob_twist_controller
	ros-indigo/cob_undercarriage_ctrl
	ros-indigo/cob_voltage_control
	ros-indigo/compressed_depth_image_transport
	ros-indigo/compressed_image_transport
	ros-indigo/controller_manager
	ros-indigo/costmap_2d
	ros-indigo/diagnostic_aggregator
	ros-indigo/image_proc
	ros-indigo/joint_state_controller
	ros-indigo/joint_state_publisher
	ros-indigo/joint_trajectory_controller
	ros-indigo/joy
	ros-indigo/laser_filters
	ros-indigo/nodelet
	ros-indigo/openni2_launch
	ros-indigo/openni_launch
	ros-indigo/position_controllers
	ros-indigo/realsense_camera
	ros-indigo/robot_state_publisher
	ros-indigo/roslaunch
	ros-indigo/rosserial_python
	ros-indigo/rosserial_server
	ros-indigo/rostopic
	ros-indigo/rplidar_ros
	ros-indigo/rviz
	ros-indigo/schunk_powercube_chain
	ros-indigo/sick_visionary_t_driver
	ros-indigo/spacenav_node
	ros-indigo/tf2_ros
	ros-indigo/theora_image_transport
	ros-indigo/topic_tools
	ros-indigo/twist_mux
	ros-indigo/ur_driver
	ros-indigo/usb_cam
	ros-indigo/velocity_controllers
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
