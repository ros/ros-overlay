# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pr2_navigation stack holds common configuration options for running the"
HOMEPAGE="http://ros.org/wiki/pr2_navigation"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/melodic/${PN}/0.1.28-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dwa_local_planner
	ros-melodic/laser_tilt_controller_filter
	ros-melodic/pr2_move_base
	ros-melodic/pr2_navigation_config
	ros-melodic/pr2_navigation_global
	ros-melodic/pr2_navigation_local
	ros-melodic/pr2_navigation_perception
	ros-melodic/pr2_navigation_self_filter
	ros-melodic/pr2_navigation_slam
	ros-melodic/pr2_navigation_teleop
	ros-melodic/semantic_point_annotator
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
