# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains visualization package for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_visualization"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/melodic/${PN}/2.1.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/jsk_interactive
	ros-melodic/jsk_interactive_marker
	ros-melodic/jsk_interactive_test
	ros-melodic/jsk_rqt_plugins
	ros-melodic/jsk_rviz_plugins
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
