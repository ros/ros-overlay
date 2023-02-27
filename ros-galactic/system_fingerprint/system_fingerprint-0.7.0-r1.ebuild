# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="The system_fingerprint package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/MetroRobots/ros_${PN}-release/archive/release/galactic/${PN}/0.7.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD-2-clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/rcl_interfaces
	ros-galactic/rclpy
	ros-galactic/ros2action
	ros-galactic/ros2cli
	ros-galactic/ros2node
	ros-galactic/ros2param
	ros-galactic/ros2topic
	dev-python/git-python
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
