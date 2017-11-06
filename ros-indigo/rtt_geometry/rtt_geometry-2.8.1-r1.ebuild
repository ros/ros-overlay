# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This metapackage contains tools for integrating the Orocos Kinematics and\
[...]"
HOMEPAGE="http://www.orocos.org/"
SRC_URI="https://github.com/orocos-gbp/rtt_geometry-release/archive/release/indigo/rtt_geometry/2.8.1-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/eigen_typekit
	ros-indigo/kdl_typekit
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
