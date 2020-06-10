# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Tests for the controller manager."
HOMEPAGE="http://ros.org/wiki/controller_manager_tests"
SRC_URI="https://github.com/ros-gbp/ros_control-release/archive/release/noetic/${PN}/0.19.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/controller_interface
	ros-noetic/controller_manager
	ros-noetic/controller_manager_msgs
	ros-noetic/hardware_interface
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/rospy
	test? ( ros-noetic/rosbash )
	test? ( ros-noetic/rosnode )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
