# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The pr2_self_test package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/TheDash/pr2_self_test-release/archive/release/indigo/pr2_self_test/1.0.12-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/joint_qualification_controllers
	ros-indigo/pr2_bringup_tests
	ros-indigo/pr2_counterbalance_check
	ros-indigo/pr2_self_test_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

