# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="franka_ros is a metapackage for all Franka Emika ROS packages"
HOMEPAGE="http://wiki.ros.org/franka_ros"
SRC_URI="https://github.com/frankaemika/${PN}-release/archive/release/noetic/${PN}/0.8.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/franka_control
	ros-noetic/franka_description
	ros-noetic/franka_example_controllers
	ros-noetic/franka_gripper
	ros-noetic/franka_hw
	ros-noetic/franka_msgs
	ros-noetic/franka_visualization
	ros-noetic/panda_moveit_config
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
