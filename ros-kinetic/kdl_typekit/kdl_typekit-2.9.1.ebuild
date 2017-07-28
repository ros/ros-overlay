# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains the KDL RTT bindings"
HOMEPAGE="http://ros.org/wiki/kdl_typekit"
SRC_URI="https://github.com/orocos-gbp/rtt_geometry-release/archive/release/kinetic/kdl_typekit/2.9.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ocl
	ros-kinetic/orocos_kdl
	ros-kinetic/rtt
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

