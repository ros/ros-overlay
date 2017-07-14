# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="a#text"
HOMEPAGE="http://wiki.ros.org/dwa_local_planner"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/lunar/dwa_local_planner/1.14.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/base_local_planner
	ros-lunar/costmap_2d
	ros-lunar/dynamic_reconfigure
	ros-lunar/nav_core
	ros-lunar/nav_msgs
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/tf
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/pcl_conversions
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

