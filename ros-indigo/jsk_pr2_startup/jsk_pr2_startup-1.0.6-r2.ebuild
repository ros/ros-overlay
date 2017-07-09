# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="jsk_pr2_startup"
HOMEPAGE="http://ros.org/wiki/jsk_pr2_startup"
SRC_URI="https://github.com/tork-a/jsk_robot-release/archive/release/indigo/jsk_pr2_startup/1.0.6-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/dwa_local_planner
	ros-indigo/eusurdf
	ros-indigo/jsk_interactive_marker
	ros-indigo/jsk_maps
	ros-indigo/jsk_network_tools
	ros-indigo/jsk_robot_startup
	ros-indigo/pr2_arm_kinematics
	ros-indigo/pr2_gazebo
	ros-indigo/pr2_gripper_sensor_action
	ros-indigo/pr2_mannequin_mode
	ros-indigo/pr2_move_base
	ros-indigo/pr2_navigation
	ros-indigo/pr2_navigation_config
	ros-indigo/pr2_navigation_perception
	ros-indigo/pr2_teleop_general
	ros-indigo/pr2_tuck_arms_action
	ros-indigo/semantic_point_annotator
	ros-indigo/social_navigation_layers
"
DEPEND="${RDEPEND}
	ros-indigo/amcl
	ros-indigo/catkin
	ros-indigo/dynamic_tf_publisher
	ros-indigo/face_detector
	ros-indigo/image_view2
	ros-indigo/imagesift
	ros-indigo/jsk_pcl_ros
	ros-indigo/jsk_perception
	ros-indigo/jsk_topic_tools
	ros-indigo/leg_detector
	ros-indigo/map_server
	ros-indigo/mjpeg_server
	ros-indigo/move_base
	ros-indigo/move_base_msgs
	ros-indigo/openni_camera
	ros-indigo/people_velocity_tracker
	ros-indigo/pr2_base_trajectory_action
	ros-indigo/resized_image_transport
	ros-indigo/roseus
	ros-indigo/rospy
	ros-indigo/rostwitter
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_py
	ros-indigo/rqt_py_common
	ros-indigo/sound_play
	ros-indigo/std_msgs
	ros-indigo/tf2
	ros-indigo/tf2_ros
	ros-indigo/topic_tools
	ros-indigo/voice_text
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

