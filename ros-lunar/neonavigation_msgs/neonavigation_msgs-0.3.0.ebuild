# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Message definitions for neonavigation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/at-wat/${PN}-release/archive/release/lunar/${PN}/0.3.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/costmap_cspace_msgs
	ros-lunar/map_organizer_msgs
	ros-lunar/planner_cspace_msgs
	ros-lunar/trajectory_tracker_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
