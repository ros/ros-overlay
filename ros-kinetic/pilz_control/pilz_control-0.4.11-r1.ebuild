# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides a specialized joint_trajectory_controller that can be[...]"
HOMEPAGE="http://ros.org/wiki/pilz_control"
SRC_URI="https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/${PN}/0.4.11-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/controller_interface
	ros-kinetic/controller_manager
	ros-kinetic/joint_trajectory_controller
	ros-kinetic/roscpp
	ros-kinetic/std_srvs
	test? ( ros-kinetic/code_coverage )
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
