# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="a#text"
HOMEPAGE="http://ros.org/wiki/cob_navigation"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/indigo/${PN}/0.6.6-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cob_linear_nav
	ros-indigo/cob_map_accessibility_analysis
	ros-indigo/cob_mapping_slam
	ros-indigo/cob_navigation_config
	ros-indigo/cob_navigation_global
	ros-indigo/cob_navigation_local
	ros-indigo/cob_navigation_slam
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
