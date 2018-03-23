# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A path planner library and node."
HOMEPAGE="http://wiki.ros.org/global_planner"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/lunar/${PN}/1.15.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/costmap_2d
	ros-lunar/dynamic_reconfigure
	ros-lunar/geometry_msgs
	ros-lunar/nav_core
	ros-lunar/nav_msgs
	ros-lunar/navfn
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/tf
"
DEPEND="${RDEPEND}
	ros-lunar/angles
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
