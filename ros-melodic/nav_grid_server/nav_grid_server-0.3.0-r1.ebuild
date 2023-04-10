# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Customizable tools for publishing images as NavGrids or OccupancyGrids"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DLu/robot_navigation-release/archive/release/melodic/${PN}/0.3.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/nav_2d_utils
	ros-melodic/nav_grid
	ros-melodic/nav_grid_iterators
	ros-melodic/nav_grid_pub_sub
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	test? ( ros-melodic/map_server )
	test? ( ros-melodic/roslib )
	test? ( ros-melodic/roslint )
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
