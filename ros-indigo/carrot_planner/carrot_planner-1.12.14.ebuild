# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This planner attempts to find a legal place to put a carrot for the robot t[...]"
HOMEPAGE="http://wiki.ros.org/carrot_planner"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/indigo/${PN}/1.12.14-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/base_local_planner
	ros-indigo/costmap_2d
	ros-indigo/nav_core
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/tf
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
