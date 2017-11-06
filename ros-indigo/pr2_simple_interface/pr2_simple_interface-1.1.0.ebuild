# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="pr2_simple_interface"
HOMEPAGE="http://ros.org/wiki/pr2_simple_interface"
SRC_URI="https://github.com/pr2-gbp/pr2_hack_the_future-release/archive/release/indigo/pr2_simple_interface/1.1.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/face_detector
	ros-indigo/pr2_gripper_sensor_action
	ros-indigo/pr2_gripper_sensor_controller
	ros-indigo/pr2_gripper_sensor_msgs
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sound_play
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

