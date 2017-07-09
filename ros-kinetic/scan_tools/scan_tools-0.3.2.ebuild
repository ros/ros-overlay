# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Laser scan processing tools"
HOMEPAGE="http://ros.org/wiki/scan_tools"
SRC_URI="https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/scan_tools/0.3.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( BSD LGPL-3 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/laser_ortho_projector
	ros-kinetic/laser_scan_matcher
	ros-kinetic/laser_scan_sparsifier
	ros-kinetic/laser_scan_splitter
	ros-kinetic/ncd_parser
	ros-kinetic/polar_scan_matcher
	ros-kinetic/scan_to_cloud_converter
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

