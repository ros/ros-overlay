# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pr2_self_test package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/melodic/${PN}/1.0.15-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="TODO-CATKIN-PACKAGE-LICENSE"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/joint_qualification_controllers
	ros-melodic/pr2_bringup_tests
	ros-melodic/pr2_counterbalance_check
	ros-melodic/pr2_self_test_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
