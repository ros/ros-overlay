# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="hector_geotiff provides a node that can be used to save occupancy grid map,[...]"
HOMEPAGE="http://ros.org/wiki/hector_geotiff"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/indigo/hector_geotiff/0.3.5-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/hector_map_tools
	ros-indigo/hector_nav_msgs
	ros-indigo/nav_msgs
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/std_msgs
	dev-qt/qtcore:4
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
