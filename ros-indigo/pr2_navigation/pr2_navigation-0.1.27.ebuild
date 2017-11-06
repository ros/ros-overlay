# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The pr2_navigation stack holds common configuration options for running the"
HOMEPAGE="http://ros.org/wiki/pr2_navigation"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/indigo/pr2_navigation/0.1.27-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/laser_tilt_controller_filter
	ros-indigo/pr2_move_base
	ros-indigo/pr2_navigation_config
	ros-indigo/pr2_navigation_global
	ros-indigo/pr2_navigation_local
	ros-indigo/pr2_navigation_perception
	ros-indigo/pr2_navigation_self_filter
	ros-indigo/pr2_navigation_slam
	ros-indigo/pr2_navigation_teleop
	ros-indigo/semantic_point_annotator
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
