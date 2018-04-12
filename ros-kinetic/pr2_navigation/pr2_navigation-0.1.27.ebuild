# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The pr2_navigation stack holds common configuration options for running the"
HOMEPAGE="http://ros.org/wiki/pr2_navigation"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/kinetic/${PN}/0.1.27-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/laser_tilt_controller_filter
	ros-kinetic/pr2_move_base
	ros-kinetic/pr2_navigation_config
	ros-kinetic/pr2_navigation_global
	ros-kinetic/pr2_navigation_local
	ros-kinetic/pr2_navigation_perception
	ros-kinetic/pr2_navigation_self_filter
	ros-kinetic/pr2_navigation_slam
	ros-kinetic/pr2_navigation_teleop
	ros-kinetic/semantic_point_annotator
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
