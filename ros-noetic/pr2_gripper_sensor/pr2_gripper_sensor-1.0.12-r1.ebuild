# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The pr2_gripper_sensor package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/noetic/${PN}/1.0.12-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/pr2_gripper_sensor_action
	ros-noetic/pr2_gripper_sensor_controller
	ros-noetic/pr2_gripper_sensor_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
