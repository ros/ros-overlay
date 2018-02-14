# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains a recent version of the Kinematics and Dynamics\
	[...]"
HOMEPAGE="http://wiki.ros.org/orocos_kdl"
SRC_URI="https://github.com/ros2-gbp/orocos_kinematics_dynamics-release/archive/release/ardent/${PN}/1.4.0-7.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	dev-cpp/eigen
	test? ( dev-util/cppunit )
"
DEPEND="${RDEPEND}
	dev-util/cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
