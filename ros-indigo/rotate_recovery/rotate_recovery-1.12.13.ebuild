# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This package provides a recovery behavior for the navigation stack that attempts'"
HOMEPAGE="http://wiki.ros.org/rotate_recovery"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/indigo/rotate_recovery/1.12.13-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/costmap_2d
	ros-indigo/nav_core
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/tf
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/base_local_planner
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

