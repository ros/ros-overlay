# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ROS 2 packages for TurtleBot3"
HOMEPAGE="http://turtlebot3.robotis.com"
SRC_URI="https://github.com/robotis-ros2-release/${PN}-release/archive/release/humble/${PN}/2.1.5-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/turtlebot3_bringup
	ros-humble/turtlebot3_cartographer
	ros-humble/turtlebot3_description
	ros-humble/turtlebot3_example
	ros-humble/turtlebot3_navigation2
	ros-humble/turtlebot3_node
	ros-humble/turtlebot3_teleop
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
