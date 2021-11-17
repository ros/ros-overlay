# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package contains a specialization of the gazebo_ros_control plugin.\
 [...]"
HOMEPAGE="http://ros.org/wiki/cob_gazebo_ros_control"
SRC_URI="https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/noetic/${PN}/0.7.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_manager
	ros-noetic/gazebo_ros
	ros-noetic/gazebo_ros_control
	ros-noetic/hardware_interface
	ros-noetic/joint_limits_interface
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/transmission_interface
	ros-noetic/urdf
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
