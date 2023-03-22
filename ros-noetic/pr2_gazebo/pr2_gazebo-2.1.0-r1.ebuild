# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch scripts for simulating the PR2 in <a href=\"http://ros.org/wiki/gaze[...]"
HOMEPAGE="http://ros.org/wiki/pr2_gazebo"
SRC_URI="https://github.com/pr2-gbp/pr2_simulator-release/archive/release/noetic/${PN}/2.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/diagnostic_aggregator
	ros-noetic/fingertip_pressure
	ros-noetic/gazebo_plugins
	ros-noetic/gazebo_ros
	ros-noetic/geometry_msgs
	ros-noetic/image_proc
	ros-noetic/joint_trajectory_action
	ros-noetic/pr2_controller_configuration_gazebo
	ros-noetic/pr2_controller_manager
	ros-noetic/pr2_dashboard_aggregator
	ros-noetic/pr2_description
	ros-noetic/pr2_gazebo_plugins
	ros-noetic/pr2_gripper_action
	ros-noetic/pr2_head_action
	ros-noetic/pr2_mechanism_controllers
	ros-noetic/pr2_msgs
	ros-noetic/robot_mechanism_controllers
	ros-noetic/robot_pose_ekf
	ros-noetic/robot_state_publisher
	ros-noetic/rospy
	ros-noetic/rostopic
	ros-noetic/single_joint_position_action
	ros-noetic/std_msgs
	ros-noetic/stereo_image_proc
	ros-noetic/tf2_ros
	ros-noetic/topic_tools
	ros-noetic/xacro
	test? ( ros-noetic/pr2_machine )
	test? ( ros-noetic/pr2_tuckarm )
	test? ( ros-noetic/rostest )
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
