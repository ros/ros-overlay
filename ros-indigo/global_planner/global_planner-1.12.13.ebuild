# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A path planner library and node.'"
HOMEPAGE="http://wiki.ros.org/global_planner"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/indigo/global_planner/1.12.13-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/costmap_2d
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/nav_core
	ros-indigo/nav_msgs
	ros-indigo/navfn
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/angles
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

