# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Simple simulation interface and template for setting up a hardware interfac[...]"
HOMEPAGE="https://github.com/davetcoleman/ros_control_boilerplate"
SRC_URI="https://github.com/PickNikRobotics/${PN}-release/archive/release/melodic/${PN}/0.5.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/control_msgs
	ros-melodic/control_toolbox
	ros-melodic/controller_manager
	ros-melodic/hardware_interface
	ros-melodic/joint_limits_interface
	ros-melodic/roscpp
	ros-melodic/rosparam_shortcuts
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/trajectory_msgs
	ros-melodic/transmission_interface
	ros-melodic/urdf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	dev-cpp/gflags
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
