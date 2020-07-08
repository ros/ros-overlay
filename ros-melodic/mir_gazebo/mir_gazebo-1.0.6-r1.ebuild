# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Simulation specific launch and configuration files for the MiR100 robot."
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/${PN}/1.0.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/controller_manager
	ros-melodic/fake_localization
	ros-melodic/gazebo_ros
	ros-melodic/joint_state_publisher
	ros-melodic/mir_description
	ros-melodic/mir_driver
	ros-melodic/robot_localization
	ros-melodic/robot_state_publisher
	ros-melodic/rostopic
	ros-melodic/rqt_robot_steering
	ros-melodic/topic_tools
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
