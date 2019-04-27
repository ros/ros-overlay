# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Controllers used in PR2 hardware testing. For testing counterbalance of PR2[...]"
HOMEPAGE="http://www.ros.org/wiki/joint_qualification_controllers"
SRC_URI="https://github.com/pr2-gbp/pr2_self_test-release/archive/release/indigo/${PN}/1.0.15-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/control_toolbox
	ros-indigo/message_runtime
	ros-indigo/pluginlib
	ros-indigo/pr2_controller_interface
	ros-indigo/pr2_hardware_interface
	ros-indigo/pr2_mechanism_model
	ros-indigo/realtime_tools
	ros-indigo/robot_mechanism_controllers
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/urdf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
