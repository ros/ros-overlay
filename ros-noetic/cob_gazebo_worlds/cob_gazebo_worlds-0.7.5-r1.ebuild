# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package provides some worlds for gazebo simulation."
HOMEPAGE="http://ros.org/wiki/cob_gazebo_worlds"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/noetic/${PN}/0.7.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/cob_default_env_config
	ros-noetic/controller_manager
	ros-noetic/gazebo_msgs
	ros-noetic/gazebo_ros
	ros-noetic/gazebo_ros_control
	ros-noetic/joint_state_controller
	ros-noetic/joint_state_publisher
	ros-noetic/position_controllers
	ros-noetic/robot_state_publisher
	ros-noetic/rospy
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/velocity_controllers
	ros-noetic/xacro
	test? ( ros-noetic/cob_default_env_config )
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
