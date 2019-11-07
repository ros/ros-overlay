# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_navigation stack provides different navigation packages for <a href[...]"
HOMEPAGE="http://ros.org/wiki/cob_navigation"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/kinetic/${PN}/0.6.9-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_linear_nav
	ros-kinetic/cob_map_accessibility_analysis
	ros-kinetic/cob_mapping_slam
	ros-kinetic/cob_navigation_config
	ros-kinetic/cob_navigation_global
	ros-kinetic/cob_navigation_local
	ros-kinetic/cob_navigation_slam
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
