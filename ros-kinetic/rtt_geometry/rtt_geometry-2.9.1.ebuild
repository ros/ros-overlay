# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This metapackage contains tools for integrating the Orocos Kinematics and\
	Dy"
HOMEPAGE="http://www.orocos.org/"
SRC_URI="https://github.com/orocos-gbp/rtt_geometry-release/archive/release/kinetic/rtt_geometry/2.9.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/eigen_typekit
	ros-kinetic/kdl_typekit
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

