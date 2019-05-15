# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Simulation specific launch and configuration files for the MiR100 robot."
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/indigo/${PN}/1.0.4-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager
	ros-indigo/fake_localization
	ros-indigo/gazebo_ros
	ros-indigo/joint_state_publisher
	ros-indigo/mir_description
	ros-indigo/mir_driver
	ros-indigo/robot_localization
	ros-indigo/robot_state_publisher
	ros-indigo/rostopic
	ros-indigo/rqt_robot_steering
	ros-indigo/topic_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
