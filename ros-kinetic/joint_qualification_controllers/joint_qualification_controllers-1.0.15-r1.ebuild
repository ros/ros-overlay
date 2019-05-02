# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Controllers used in PR2 hardware testing. For testing counterbalance of PR2[...]"
HOMEPAGE="http://www.ros.org/wiki/joint_qualification_controllers"
SRC_URI="https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/${PN}/1.0.15-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/control_toolbox
	ros-kinetic/message_runtime
	ros-kinetic/pluginlib
	ros-kinetic/pr2_controller_interface
	ros-kinetic/pr2_hardware_interface
	ros-kinetic/pr2_mechanism_model
	ros-kinetic/realtime_tools
	ros-kinetic/robot_mechanism_controllers
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/urdf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
