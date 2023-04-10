# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides controllers that use the speed scaling interface."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UniversalRobots/Universal_Robots_ROS_scaled_controllers-release/archive/release/melodic/${PN}/0.1.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD-3-Clause )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/controller_interface
	ros-melodic/hardware_interface
	ros-melodic/joint_trajectory_controller
	ros-melodic/pluginlib
	ros-melodic/realtime_tools
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
