# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS controller providing reading the state of speed scaling on the robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UniversalRobots/Universal_Robots_ROS_scaled_controllers-release/archive/release/melodic/${PN}/0.1.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/controller_interface
	ros-melodic/pluginlib
	ros-melodic/realtime_tools
	ros-melodic/speed_scaling_interface
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
