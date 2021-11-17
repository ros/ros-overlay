# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains visualization package for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_visualization"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/noetic/${PN}/2.1.7-4.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/jsk_interactive
	ros-noetic/jsk_interactive_marker
	ros-noetic/jsk_interactive_test
	ros-noetic/jsk_rqt_plugins
	ros-noetic/jsk_rviz_plugins
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
