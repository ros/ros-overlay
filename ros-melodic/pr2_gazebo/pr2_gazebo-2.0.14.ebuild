# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch scripts for simulating the PR2 in <a href=\"http://ros.org/wiki/gaze[...]"
HOMEPAGE="http://ros.org/wiki/pr2_gazebo"
SRC_URI="https://github.com/pr2-gbp/pr2_simulator-release/archive/release/melodic/${PN}/2.0.14-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/diagnostic_aggregator
	ros-melodic/fingertip_pressure
	ros-melodic/gazebo_plugins
	ros-melodic/gazebo_ros
	ros-melodic/geometry_msgs
	ros-melodic/image_proc
	ros-melodic/joint_trajectory_action
	ros-melodic/pr2_controller_configuration_gazebo
	ros-melodic/pr2_controller_manager
	ros-melodic/pr2_dashboard_aggregator
	ros-melodic/pr2_description
	ros-melodic/pr2_gazebo_plugins
	ros-melodic/pr2_gripper_action
	ros-melodic/pr2_head_action
	ros-melodic/pr2_mechanism_controllers
	ros-melodic/pr2_msgs
	ros-melodic/robot_mechanism_controllers
	ros-melodic/robot_pose_ekf
	ros-melodic/robot_state_publisher
	ros-melodic/rospy
	ros-melodic/rostopic
	ros-melodic/single_joint_position_action
	ros-melodic/std_msgs
	ros-melodic/stereo_image_proc
	ros-melodic/tf2_ros
	ros-melodic/topic_tools
	ros-melodic/xacro
	test? ( ros-melodic/pr2_machine )
	test? ( ros-melodic/pr2_tuckarm )
	test? ( ros-melodic/rostest )
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
