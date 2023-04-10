# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Controllers used in PR2 hardware testing. For testing counterbalance of PR2[...]"
HOMEPAGE="http://www.ros.org/wiki/joint_qualification_controllers"
SRC_URI="https://github.com/pr2-gbp/pr2_self_test-release/archive/release/melodic/${PN}/1.0.15-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/control_toolbox
	ros-melodic/message_runtime
	ros-melodic/pluginlib
	ros-melodic/pr2_controller_interface
	ros-melodic/pr2_hardware_interface
	ros-melodic/pr2_mechanism_model
	ros-melodic/realtime_tools
	ros-melodic/robot_mechanism_controllers
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/urdf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
