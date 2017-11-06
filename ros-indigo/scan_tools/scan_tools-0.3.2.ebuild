# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Laser scan processing tools"
HOMEPAGE="http://ros.org/wiki/scan_tools"
SRC_URI="https://github.com/ros-gbp/scan_tools-release/archive/release/indigo/scan_tools/0.3.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( BSD LGPL-3 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/laser_ortho_projector
	ros-indigo/laser_scan_matcher
	ros-indigo/laser_scan_sparsifier
	ros-indigo/laser_scan_splitter
	ros-indigo/ncd_parser
	ros-indigo/polar_scan_matcher
	ros-indigo/scan_to_cloud_converter
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

