# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Simple simulation interface and template for setting up a hardware interfac[...]"
HOMEPAGE="https://github.com/davetcoleman/ros_control_boilerplate"
SRC_URI="https://github.com/PickNikRobotics/${PN}-release/archive/release/noetic/${PN}/0.6.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/control_msgs
	ros-noetic/control_toolbox
	ros-noetic/controller_manager
	ros-noetic/hardware_interface
	ros-noetic/joint_limits_interface
	ros-noetic/roscpp
	ros-noetic/rosparam_shortcuts
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/trajectory_msgs
	ros-noetic/transmission_interface
	ros-noetic/urdf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	dev-cpp/gflags
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
