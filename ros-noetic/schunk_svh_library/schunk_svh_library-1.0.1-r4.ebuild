# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Standalone C++ library for accessing the Schunk five finger hand."
HOMEPAGE="http://wiki.ros.org/schunk_svh_library"
SRC_URI="https://github.com/fzi-forschungszentrum-informatik/${PN}-release/archive/release/noetic/${PN}/1.0.1-4.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-3.0-or-later"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/catkin
	test? ( dev-libs/boost[python] )
"
DEPEND="${RDEPEND}
	dev-libs/boost[python]
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
