# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The diffbot_navigation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-mobile-robots-release/diffbot-release/archive/release/noetic/${PN}/1.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSDv3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/amcl
	ros-noetic/base_local_planner
	ros-noetic/diffbot_bringup
	ros-noetic/dwa_local_planner
	ros-noetic/map_server
	ros-noetic/move_base
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
