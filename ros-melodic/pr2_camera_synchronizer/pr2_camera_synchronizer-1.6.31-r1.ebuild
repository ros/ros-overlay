# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>\
	The PR2 is equipped with a texture projector that can be used to\
[...]"
HOMEPAGE="http://pr.willowgarage.com/wiki/pr2_camera_synchronizer"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/melodic/${PN}/1.6.31-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_msgs
	ros-melodic/dynamic_reconfigure
	ros-melodic/ethercat_trigger_controllers
	ros-melodic/rospy
	ros-melodic/wge100_camera
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
