# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch scripts for simulating the PR2 in <a href=\"http://ros.org/wiki/gaze[...]"
HOMEPAGE="http://ros.org/wiki/pr2_gazebo"
SRC_URI="https://github.com/pr2-gbp/pr2_simulator-release/archive/release/kinetic/${PN}/2.0.11-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_aggregator
	ros-kinetic/fingertip_pressure
	ros-kinetic/gazebo_plugins
	ros-kinetic/geometry_msgs
	ros-kinetic/image_proc
	ros-kinetic/joint_trajectory_action
	ros-kinetic/pr2_controller_configuration_gazebo
	ros-kinetic/pr2_dashboard_aggregator
	ros-kinetic/pr2_description
	ros-kinetic/pr2_gazebo_plugins
	ros-kinetic/pr2_gripper_action
	ros-kinetic/pr2_head_action
	ros-kinetic/pr2_mechanism_controllers
	ros-kinetic/pr2_msgs
	ros-kinetic/robot_mechanism_controllers
	ros-kinetic/robot_pose_ekf
	ros-kinetic/rospy
	ros-kinetic/single_joint_position_action
	ros-kinetic/std_msgs
	ros-kinetic/stereo_image_proc
	ros-kinetic/tf2_ros
	ros-kinetic/topic_tools
	ros-kinetic/xacro
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
