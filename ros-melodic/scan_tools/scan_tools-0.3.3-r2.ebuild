# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Laser scan processing tools."
HOMEPAGE="http://ros.org/wiki/scan_tools"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.3.3-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD LGPL-3.0-only )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/laser_ortho_projector
	ros-melodic/laser_scan_matcher
	ros-melodic/laser_scan_sparsifier
	ros-melodic/laser_scan_splitter
	ros-melodic/ncd_parser
	ros-melodic/polar_scan_matcher
	ros-melodic/scan_to_cloud_converter
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
