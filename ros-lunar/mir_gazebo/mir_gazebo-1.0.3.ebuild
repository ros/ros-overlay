# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Simulation specific launch and configuration files for the MiR100 robot."
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/${PN}/1.0.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/controller_manager
	ros-lunar/fake_localization
	ros-lunar/gazebo_ros
	ros-lunar/joint_state_publisher
	ros-lunar/mir_description
	ros-lunar/mir_driver
	ros-lunar/robot_localization
	ros-lunar/robot_state_publisher
	ros-lunar/rostopic
	ros-lunar/rqt_robot_steering
	ros-lunar/topic_tools
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/roslaunch
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
