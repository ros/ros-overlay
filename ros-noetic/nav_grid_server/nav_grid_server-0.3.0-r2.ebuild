# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Customizable tools for publishing images as NavGrids or OccupancyGrids"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DLu/robot_navigation-release/archive/release/noetic/${PN}/0.3.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/nav_2d_utils
	ros-noetic/nav_grid
	ros-noetic/nav_grid_iterators
	ros-noetic/nav_grid_pub_sub
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	test? ( ros-noetic/map_server )
	test? ( ros-noetic/roslib )
	test? ( ros-noetic/roslint )
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
