# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Simple simulation interface and template for setting up a hardware interface for"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/ros_control_boilerplate-release/archive/release/lunar/ros_control_boilerplate/0.4.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/control_msgs
	ros-lunar/control_toolbox
	ros-lunar/controller_manager
	ros-lunar/hardware_interface
	ros-lunar/joint_limits_interface
	ros-lunar/roscpp
	ros-lunar/rosparam_shortcuts
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/trajectory_msgs
	ros-lunar/transmission_interface
	ros-lunar/urdf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	dev-cpp/gflags
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

