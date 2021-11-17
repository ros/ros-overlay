# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Laser scan processing tools."
HOMEPAGE="http://ros.org/wiki/scan_tools"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.3.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="( BSD LGPL-2 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/laser_ortho_projector
	ros-noetic/laser_scan_matcher
	ros-noetic/laser_scan_sparsifier
	ros-noetic/laser_scan_splitter
	ros-noetic/ncd_parser
	ros-noetic/polar_scan_matcher
	ros-noetic/scan_to_cloud_converter
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
