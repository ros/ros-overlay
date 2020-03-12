# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides a recovery behavior for the navigation stack that att[...]"
HOMEPAGE="http://wiki.ros.org/rotate_recovery"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/${PN}/1.14.7-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/costmap_2d
	ros-kinetic/nav_core
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/tf
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/base_local_planner
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
