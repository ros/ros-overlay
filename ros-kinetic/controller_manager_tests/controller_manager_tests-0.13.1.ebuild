# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="controller_manager_tests"
HOMEPAGE="http://ros.org/wiki/controller_manager_tests"
SRC_URI="https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/${PN}/0.13.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/controller_interface
	ros-kinetic/controller_manager
	ros-kinetic/rostest
	test? ( ros-kinetic/rosbash )
	test? ( ros-kinetic/rosnode )
	test? ( ros-kinetic/rosservice )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
