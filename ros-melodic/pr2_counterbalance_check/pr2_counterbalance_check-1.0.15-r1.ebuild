# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="pr2_counterbalance_check"
HOMEPAGE="http://ros.org/wiki/pr2_counterbalance_check"
SRC_URI="https://github.com/pr2-gbp/pr2_self_test-release/archive/release/melodic/${PN}/1.0.15-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/joint_qualification_controllers
	ros-melodic/pr2_controller_configuration
	ros-melodic/pr2_controller_manager
	ros-melodic/pr2_controllers_msgs
	ros-melodic/pr2_self_test_msgs
	ros-melodic/rospy
	ros-melodic/std_msgs
	test? ( ros-melodic/rosunit )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
