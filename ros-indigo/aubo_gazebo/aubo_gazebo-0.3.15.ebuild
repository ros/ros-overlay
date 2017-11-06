# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Gazebo wrapper for the Aubo robot."
HOMEPAGE="http://ros.org/wiki/aubo_gazebo"
SRC_URI="https://github.com/auboliuxin/aubo_robot-release/archive/release/indigo/aubo_gazebo/0.3.15-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/aubo_description
	ros-indigo/effort_controllers
	ros-indigo/gazebo_ros
	ros-indigo/gazebo_ros_control
	ros-indigo/gazebo_ros_pkgs
	ros-indigo/joint_state_controller
	ros-indigo/joint_trajectory_controller
	ros-indigo/robot_state_publisher
	ros-indigo/ros_controllers
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
