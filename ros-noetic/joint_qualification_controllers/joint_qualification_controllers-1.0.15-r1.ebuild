# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Controllers used in PR2 hardware testing. For testing counterbalance of PR2[...]"
HOMEPAGE="http://www.ros.org/wiki/joint_qualification_controllers"
SRC_URI="https://github.com/pr2-gbp/pr2_self_test-release/archive/release/noetic/${PN}/1.0.15-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/control_toolbox
	ros-noetic/message_runtime
	ros-noetic/pluginlib
	ros-noetic/pr2_controller_interface
	ros-noetic/pr2_hardware_interface
	ros-noetic/pr2_mechanism_model
	ros-noetic/realtime_tools
	ros-noetic/robot_mechanism_controllers
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/urdf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
