# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Geographic information metapackage.\
\
	Not needed for wet packages, use[...]"
HOMEPAGE="http://wiki.ros.org/geographic_info"
SRC_URI="https://github.com/ros-geographic-info/${PN}-release/archive/release/foxy/${PN}/1.0.4-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/geodesy
	ros-foxy/geographic_msgs
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
