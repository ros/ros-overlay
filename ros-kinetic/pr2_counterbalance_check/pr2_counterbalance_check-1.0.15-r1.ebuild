# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="pr2_counterbalance_check"
HOMEPAGE="http://ros.org/wiki/pr2_counterbalance_check"
SRC_URI="https://github.com/pr2-gbp/pr2_self_test-release/archive/release/kinetic/${PN}/1.0.15-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/joint_qualification_controllers
	ros-kinetic/pr2_controller_configuration
	ros-kinetic/pr2_controller_manager
	ros-kinetic/pr2_controllers_msgs
	ros-kinetic/pr2_self_test_msgs
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	test? ( ros-kinetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
