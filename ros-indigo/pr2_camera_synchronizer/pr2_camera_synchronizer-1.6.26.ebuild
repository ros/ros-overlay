# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="<p>\
	The PR2 is equipped with a texture projector that can be used to\
[...]"
HOMEPAGE="http://pr.willowgarage.com/wiki/pr2_camera_synchronizer"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/indigo/${PN}/1.6.26-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/dynamic_reconfigure
	ros-indigo/ethercat_trigger_controllers
	ros-indigo/rospy
	ros-indigo/wge100_camera
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
