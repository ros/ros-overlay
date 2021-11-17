# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="<p>\
	The PR2 is equipped with a texture projector that can be used to\
[...]"
HOMEPAGE="http://pr.willowgarage.com/wiki/pr2_camera_synchronizer"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/noetic/${PN}/1.6.32-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_msgs
	ros-noetic/dynamic_reconfigure
	ros-noetic/ethercat_trigger_controllers
	ros-noetic/rospy
	ros-noetic/wge100_camera
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
