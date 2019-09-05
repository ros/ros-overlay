# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="Teleoperation node using keyboard for TurtleBot3."
HOMEPAGE="http://wiki.ros.org/turtlebot3_teleop"
SRC_URI="https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/${PN}/2.0.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/geometry_msgs
	ros-dashing/rclpy
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
