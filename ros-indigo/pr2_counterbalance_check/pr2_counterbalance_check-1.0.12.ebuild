# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="pr2_counterbalance_check"
HOMEPAGE="http://ros.org/wiki/pr2_counterbalance_check"
SRC_URI="https://github.com/TheDash/pr2_self_test-release/archive/release/indigo/pr2_counterbalance_check/1.0.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/joint_qualification_controllers
	ros-indigo/pr2_controller_configuration
	ros-indigo/pr2_controller_manager
	ros-indigo/pr2_controllers_msgs
	ros-indigo/pr2_self_test_msgs
	ros-indigo/rospy
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
