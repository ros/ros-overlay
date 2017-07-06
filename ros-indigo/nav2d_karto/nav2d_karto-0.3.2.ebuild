# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Graph-based Simultaneous Localization and Mapping module.
	Includes OpenKarto'"
HOMEPAGE="http://wiki.ros.org/robot_operator"
SRC_URI="https://github.com/skasperski/navigation_2d-release/archive/release/indigo/nav2d_karto/0.3.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/nav2d_localizer
	ros-indigo/nav2d_msgs
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/tf
	ros-indigo/visualization_msgs
	dev-cpp/eigen
	sci-libs/suitesparse
	dev-cpp/tbb
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

