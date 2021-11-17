# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Simulation specific launch and configuration files for the MiR100 robot."
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/${PN}/1.1.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_manager
	ros-noetic/fake_localization
	ros-noetic/gazebo_ros
	ros-noetic/joint_state_publisher
	ros-noetic/mir_description
	ros-noetic/mir_driver
	ros-noetic/robot_localization
	ros-noetic/robot_state_publisher
	ros-noetic/rostopic
	ros-noetic/rqt_robot_steering
	ros-noetic/topic_tools
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslaunch
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
