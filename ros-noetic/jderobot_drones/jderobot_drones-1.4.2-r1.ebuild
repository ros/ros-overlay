# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The jderobot_drones stack"
HOMEPAGE="https://github.com/JdeRobot/drones"
SRC_URI="https://github.com/JdeRobot/drones-release/archive/release/noetic/${PN}/1.4.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/drone_assets
	ros-noetic/drone_circuit_assets
	ros-noetic/drone_wrapper
	ros-noetic/rqt_drone_teleop
	ros-noetic/rqt_ground_robot_teleop
	ros-noetic/tello_driver
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
