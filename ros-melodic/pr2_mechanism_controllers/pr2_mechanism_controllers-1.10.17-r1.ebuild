# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pr2_mechanism_controllers package contains realtime\
	controllers th[...]"
HOMEPAGE="http://ros.org/pr2_mechanism_controllers"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/${PN}/1.10.17-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/angles
	ros-melodic/control_toolbox
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/filters
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/nav_msgs
	ros-melodic/pluginlib
	ros-melodic/pr2_controller_interface
	ros-melodic/pr2_controllers_msgs
	ros-melodic/pr2_mechanism_model
	ros-melodic/pr2_mechanism_msgs
	ros-melodic/pr2_msgs
	ros-melodic/realtime_tools
	ros-melodic/robot_mechanism_controllers
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
