# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch scripts for simulating the PR2 in <a href=\"http://ros.org/wiki/gaze[...]"
HOMEPAGE="http://ros.org/wiki/pr2_gazebo"
SRC_URI="https://github.com/pr2-gbp/pr2_simulator-release/archive/release/lunar/${PN}/2.0.13-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/diagnostic_aggregator
	ros-lunar/fingertip_pressure
	ros-lunar/gazebo_plugins
	ros-lunar/gazebo_ros
	ros-lunar/geometry_msgs
	ros-lunar/image_proc
	ros-lunar/joint_trajectory_action
	ros-lunar/pr2_controller_configuration_gazebo
	ros-lunar/pr2_controller_manager
	ros-lunar/pr2_dashboard_aggregator
	ros-lunar/pr2_description
	ros-lunar/pr2_gazebo_plugins
	ros-lunar/pr2_gripper_action
	ros-lunar/pr2_head_action
	ros-lunar/pr2_mechanism_controllers
	ros-lunar/pr2_msgs
	ros-lunar/robot_mechanism_controllers
	ros-lunar/robot_pose_ekf
	ros-lunar/robot_state_publisher
	ros-lunar/rospy
	ros-lunar/rostopic
	ros-lunar/single_joint_position_action
	ros-lunar/std_msgs
	ros-lunar/stereo_image_proc
	ros-lunar/tf2_ros
	ros-lunar/topic_tools
	ros-lunar/xacro
	test? ( ros-lunar/pr2_machine )
	test? ( ros-lunar/pr2_tuckarm )
	test? ( ros-lunar/rostest )
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
