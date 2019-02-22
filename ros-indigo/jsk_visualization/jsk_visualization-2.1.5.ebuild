# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains visualization package for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_visualization"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/indigo/${PN}/2.1.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/jsk_interactive
	ros-indigo/jsk_interactive_marker
	ros-indigo/jsk_interactive_test
	ros-indigo/jsk_rqt_plugins
	ros-indigo/jsk_rviz_plugins
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
