# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="These are regression tests for the osm_cartography and\
	 route_network [...]"
HOMEPAGE="http://ros.org/wiki/test_osm"
SRC_URI="https://github.com/ros-geographic-info/open_street_map-release/archive/release/melodic/${PN}/0.2.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geodesy
	ros-melodic/geographic_msgs
	ros-melodic/osm_cartography
	ros-melodic/route_network
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
