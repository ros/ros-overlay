# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="franka_ros is a metapackage for all Franka Emika ROS packages"
HOMEPAGE="http://wiki.ros.org/franka_ros"
SRC_URI="https://github.com/frankaemika/${PN}-release/archive/release/melodic/${PN}/0.6.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/franka_control
	ros-melodic/franka_description
	ros-melodic/franka_example_controllers
	ros-melodic/franka_gripper
	ros-melodic/franka_hw
	ros-melodic/franka_msgs
	ros-melodic/franka_visualization
	ros-melodic/panda_moveit_config
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
