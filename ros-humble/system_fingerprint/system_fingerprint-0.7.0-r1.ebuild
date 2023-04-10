# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-python

DESCRIPTION="The system_fingerprint package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros_${PN}-release/archive/release/humble/${PN}/0.7.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD-2-clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/rcl_interfaces
	ros-humble/rclpy
	ros-humble/ros2action
	ros-humble/ros2cli
	ros-humble/ros2node
	ros-humble/ros2param
	ros-humble/ros2topic
	dev-python/git-python
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
