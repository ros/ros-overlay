# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Wrapper interface for tracing libraries"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/bosch-robotics-cr/${PN}-release/archive/release/melodic/${PN}/0.2.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="APLv2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-melodic/rosbash )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-libs/boost[python]
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
