# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The omnibase_control package"
HOMEPAGE="https://erc-bpgc.github.io/omnibase/"
SRC_URI="https://github.com/ERC-BPGC/omnibase-release/archive/release/melodic/${PN}/1.0.2-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/effort_controllers
	ros-melodic/geometry_msgs
	ros-melodic/joint_state_controller
	ros-melodic/joint_trajectory_controller
	ros-melodic/nav_msgs
	ros-melodic/position_controllers
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/std_msgs
	ros-melodic/velocity_controllers
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
