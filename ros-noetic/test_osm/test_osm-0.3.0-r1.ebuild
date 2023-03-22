# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="These are regression tests for the osm_cartography and\
	 route_network [...]"
HOMEPAGE="http://ros.org/wiki/test_osm"
SRC_URI="https://github.com/ros-geographic-info/open_street_map-release/archive/release/noetic/${PN}/0.3.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geodesy
	ros-noetic/geographic_msgs
	ros-noetic/osm_cartography
	ros-noetic/route_network
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
