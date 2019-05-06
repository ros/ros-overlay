# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Wrapper interface for tracing libraries"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/bosch-robotics-cr/${PN}-release/archive/release/kinetic/${PN}/0.2.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="APLv2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-kinetic/rosbash )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-libs/boost[python]
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
