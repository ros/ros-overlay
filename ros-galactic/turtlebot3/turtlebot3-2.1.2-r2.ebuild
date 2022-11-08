# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="ROS 2 packages for TurtleBot3"
HOMEPAGE="http://turtlebot3.robotis.com"
SRC_URI="https://github.com/robotis-ros2-release/${PN}-release/archive/release/galactic/${PN}/2.1.2-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/turtlebot3_bringup
	ros-galactic/turtlebot3_cartographer
	ros-galactic/turtlebot3_description
	ros-galactic/turtlebot3_example
	ros-galactic/turtlebot3_navigation2
	ros-galactic/turtlebot3_node
	ros-galactic/turtlebot3_teleop
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
