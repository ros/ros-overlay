# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The jderobot_drones stack"
HOMEPAGE="https://github.com/JdeRobot/drones"
SRC_URI="https://github.com/JdeRobot/drones-release/archive/release/melodic/${PN}/1.3.2-5.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/drone_wrapper
	ros-melodic/rqt_drone_teleop
	ros-melodic/rqt_ground_robot_teleop
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
