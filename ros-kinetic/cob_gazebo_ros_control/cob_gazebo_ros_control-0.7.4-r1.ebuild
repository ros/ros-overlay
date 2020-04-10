# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains a specialization of the gazebo_ros_control plugin.\
 [...]"
HOMEPAGE="http://ros.org/wiki/cob_gazebo_ros_control"
SRC_URI="https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/kinetic/${PN}/0.7.4-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/gazebo_ros
	ros-kinetic/gazebo_ros_control
	ros-kinetic/hardware_interface
	ros-kinetic/joint_limits_interface
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/transmission_interface
	ros-kinetic/urdf
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
