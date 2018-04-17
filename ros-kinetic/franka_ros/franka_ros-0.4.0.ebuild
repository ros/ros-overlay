# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="franka_ros is a metapackage for all Franka Emika ROS packages"
HOMEPAGE="http://wiki.ros.org/franka_ros"
SRC_URI="https://github.com/frankaemika/${PN}-release/archive/release/kinetic/${PN}/0.4.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/franka_control
	ros-kinetic/franka_description
	ros-kinetic/franka_example_controllers
	ros-kinetic/franka_gripper
	ros-kinetic/franka_hw
	ros-kinetic/franka_msgs
	ros-kinetic/franka_visualization
	ros-kinetic/panda_moveit_config
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
