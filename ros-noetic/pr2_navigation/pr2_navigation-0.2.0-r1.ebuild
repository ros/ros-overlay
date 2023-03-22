# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pr2_navigation stack holds common configuration options for running the"
HOMEPAGE="http://ros.org/wiki/pr2_navigation"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/noetic/${PN}/0.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/dwa_local_planner
	ros-noetic/laser_tilt_controller_filter
	ros-noetic/pr2_move_base
	ros-noetic/pr2_navigation_config
	ros-noetic/pr2_navigation_global
	ros-noetic/pr2_navigation_local
	ros-noetic/pr2_navigation_perception
	ros-noetic/pr2_navigation_self_filter
	ros-noetic/pr2_navigation_slam
	ros-noetic/pr2_navigation_teleop
	ros-noetic/semantic_point_annotator
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
