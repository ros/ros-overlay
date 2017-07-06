# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The fulanghua_waypoints package'"
HOMEPAGE="http://wiki.ros.org/fulanghua_waypoints_nav"
SRC_URI="https://github.com/DaikiMaekawa/fulanghua_navigation-release/archive/release/indigo/fulanghua_waypoints_nav/0.0.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/fulanghua_srvs
	ros-indigo/geometry_msgs
	ros-indigo/move_base
	ros-indigo/move_base_msgs
	ros-indigo/roscpp
	ros-indigo/std_srvs
	ros-indigo/tf
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

