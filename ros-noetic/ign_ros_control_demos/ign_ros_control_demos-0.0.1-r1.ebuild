# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Ignition ros_control package demos."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ign_ros_control-release/archive/release/noetic/${PN}/0.0.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/effort_controllers
	ros-noetic/ign_ros_control
	ros-noetic/joint_state_controller
	ros-noetic/joint_state_publisher
	ros-noetic/position_controllers
	ros-noetic/ros_ign_gazebo
	ros-noetic/velocity_controllers
	ros-noetic/xacro
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
