# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Simple simulation interface and template for setting up a hardware interface for'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/ros_control_boilerplate-release/archive/release/indigo/ros_control_boilerplate/0.3.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/control_msgs
	ros-indigo/control_toolbox
	ros-indigo/controller_manager
	ros-indigo/hardware_interface
	ros-indigo/joint_limits_interface
	ros-indigo/ros_controllers
	ros-indigo/roscpp
	ros-indigo/rosparam_shortcuts
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/trajectory_msgs
	ros-indigo/transmission_interface
	ros-indigo/urdf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	dev-cpp/gflags
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

