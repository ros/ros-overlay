# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="This package contains a recent version of the Kinematics and Dynamics
	Librar"
HOMEPAGE="http://wiki.ros.org/orocos_kdl"
SRC_URI="https://github.com/smits/orocos-kdl-release/archive/release/lunar/orocos_kdl/1.3.1-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/catkin
	dev-cpp/eigen
	virtual/pkgconfig
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_prepare() {
	cd ${P}
	EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
	EPATCH_FORCE="yes" epatch
ros-cmake_src_prepare
}

