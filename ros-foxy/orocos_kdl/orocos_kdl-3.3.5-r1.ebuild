# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package contains a recent version of the Kinematics and Dynamics\
	[...]"
HOMEPAGE="http://wiki.ros.org/orocos_kdl"
SRC_URI="https://github.com/ros2-gbp/orocos_kinematics_dynamics-release/archive/release/foxy/${PN}/3.3.5-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="LGPL-2.1-or-later"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	dev-cpp/eigen
	test? ( dev-util/cppunit )
"
DEPEND="${RDEPEND}
	ros-foxy/eigen3_cmake_module
	dev-util/cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
