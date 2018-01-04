# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="a#text"
HOMEPAGE="http://wiki.ros.org/dwa_local_planner"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/indigo/${PN}/1.12.14-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/base_local_planner
	ros-indigo/costmap_2d
	ros-indigo/dynamic_reconfigure
	ros-indigo/nav_core
	ros-indigo/nav_msgs
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/tf
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/pcl_conversions
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
