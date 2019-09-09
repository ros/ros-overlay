# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="ROS 2 packages for TurtleBot3"
HOMEPAGE="http://wiki.ros.org/turtlebot3_description"
SRC_URI="https://github.com/robotis-ros2-release/${PN}-release/archive/release/dashing/${PN}/2.0.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/turtlebot3_bringup
	ros-dashing/turtlebot3_cartographer
	ros-dashing/turtlebot3_description
	ros-dashing/turtlebot3_navigation2
	ros-dashing/turtlebot3_node
	ros-dashing/turtlebot3_teleop
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
