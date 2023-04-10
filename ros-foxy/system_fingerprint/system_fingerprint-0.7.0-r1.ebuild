# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="The system_fingerprint package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/MetroRobots/ros_${PN}-release/archive/release/foxy/${PN}/0.7.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD-2-clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/rcl_interfaces
	ros-foxy/rclpy
	ros-foxy/ros2action
	ros-foxy/ros2cli
	ros-foxy/ros2node
	ros-foxy/ros2param
	ros-foxy/ros2topic
	dev-python/git-python
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
