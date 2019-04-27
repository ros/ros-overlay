# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="pr2_counterbalance_check"
HOMEPAGE="http://ros.org/wiki/pr2_counterbalance_check"
SRC_URI="https://github.com/pr2-gbp/pr2_self_test-release/archive/release/indigo/${PN}/1.0.15-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/joint_qualification_controllers
	ros-indigo/pr2_controller_configuration
	ros-indigo/pr2_controller_manager
	ros-indigo/pr2_controllers_msgs
	ros-indigo/pr2_self_test_msgs
	ros-indigo/rospy
	ros-indigo/std_msgs
	test? ( ros-indigo/rosunit )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
