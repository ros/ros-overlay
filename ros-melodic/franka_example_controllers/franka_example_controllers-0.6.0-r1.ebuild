# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="franka_example_controllers provides example code for controlling Franka Emi[...]"
HOMEPAGE="http://wiki.ros.org/franka_example_controllers"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/melodic/${PN}/0.6.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/controller_interface
	ros-melodic/dynamic_reconfigure
	ros-melodic/franka_control
	ros-melodic/franka_description
	ros-melodic/franka_hw
	ros-melodic/geometry_msgs
	ros-melodic/hardware_interface
	ros-melodic/libfranka
	ros-melodic/message_runtime
	ros-melodic/panda_moveit_config
	ros-melodic/pluginlib
	ros-melodic/realtime_tools
	ros-melodic/roscpp
	ros-melodic/rospy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
