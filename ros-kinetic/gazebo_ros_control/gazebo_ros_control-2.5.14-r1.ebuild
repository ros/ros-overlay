# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="gazebo_ros_control"
HOMEPAGE="http://ros.org/wiki/gazebo_ros_control"
SRC_URI="https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/${PN}/2.5.14-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/angles
	ros-kinetic/control_toolbox
	ros-kinetic/controller_manager
	ros-kinetic/gazebo_ros
	ros-kinetic/hardware_interface
	ros-kinetic/joint_limits_interface
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/std_msgs
	ros-kinetic/transmission_interface
	ros-kinetic/urdf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/gazebo_dev
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
