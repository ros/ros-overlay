# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>\
	A wrapper around Polar Scan Matcher by Albert Diosi and Lindsay Kl[...]"
HOMEPAGE="http://ros.org/wiki/polar_scan_matcher"
SRC_URI="https://github.com/ros-gbp/scan_tools-release/archive/release/melodic/${PN}/0.3.3-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
