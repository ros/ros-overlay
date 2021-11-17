# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The cob_navigation stack provides different navigation packages for <a href[...]"
HOMEPAGE="http://ros.org/wiki/cob_navigation"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/noetic/${PN}/0.6.11-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_linear_nav
	ros-noetic/cob_map_accessibility_analysis
	ros-noetic/cob_mapping_slam
	ros-noetic/cob_navigation_config
	ros-noetic/cob_navigation_global
	ros-noetic/cob_navigation_local
	ros-noetic/cob_navigation_slam
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
