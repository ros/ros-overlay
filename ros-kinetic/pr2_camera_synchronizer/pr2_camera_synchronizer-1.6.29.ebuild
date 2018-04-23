# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="<p>\
	The PR2 is equipped with a texture projector that can be used to\
[...]"
HOMEPAGE="http://pr.willowgarage.com/wiki/pr2_camera_synchronizer"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/kinetic/${PN}/1.6.29-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/ethercat_trigger_controllers
	ros-kinetic/rospy
	ros-kinetic/wge100_camera
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
