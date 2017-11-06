# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains the KDL RTT bindings"
HOMEPAGE="http://ros.org/wiki/kdl_typekit"
SRC_URI="https://github.com/orocos-gbp/rtt_geometry-release/archive/release/indigo/kdl_typekit/2.8.1-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ocl
	ros-indigo/orocos_kdl
	ros-indigo/rtt
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

