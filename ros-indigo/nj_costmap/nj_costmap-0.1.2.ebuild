# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The nj_costmap package implements a navigation jockey for the  Large Maps fram"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/lama-imr/lama_costmap-release/archive/release/indigo/nj_costmap/0.1.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/crossing_detector
	ros-indigo/geometry_msgs
	ros-indigo/goto_crossing
	ros-indigo/lama_jockeys
	ros-indigo/lama_msgs
	ros-indigo/nav_msgs
	ros-indigo/nj_oa_costmap
	ros-indigo/roscpp
	ros-indigo/tf
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

