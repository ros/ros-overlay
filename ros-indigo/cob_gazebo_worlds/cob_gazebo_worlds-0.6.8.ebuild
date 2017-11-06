# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides some worlds for gazebo simulation."
HOMEPAGE="http://ros.org/wiki/cob_gazebo_worlds"
SRC_URI="https://github.com/ipa320/cob_simulation-release/archive/release/indigo/cob_gazebo_worlds/0.6.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_default_env_config
	ros-indigo/controller_manager
	ros-indigo/gazebo_msgs
	ros-indigo/gazebo_ros
	ros-indigo/gazebo_ros_control
	ros-indigo/joint_state_controller
	ros-indigo/joint_state_publisher
	ros-indigo/position_controllers
	ros-indigo/robot_state_publisher
	ros-indigo/roslaunch
	ros-indigo/rospy
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/velocity_controllers
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

