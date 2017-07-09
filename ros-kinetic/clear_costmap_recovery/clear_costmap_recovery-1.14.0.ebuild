# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides a recovery behavior for the navigation stack that attempts"
HOMEPAGE="http://wiki.ros.org/clear_costmap_recovery"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/clear_costmap_recovery/1.14.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

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
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

