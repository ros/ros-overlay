# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An Orocos typekit for Eigen types."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orocos-gbp/rtt_geometry-release/archive/release/kinetic/${PN}/2.9.3-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rtt
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
