# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="MAVLink message marshaling library.\
  This package provides C-headers and [...]"
HOMEPAGE="http://qgroundcontrol.org/mavlink/"
SRC_URI="https://github.com/${PN}/${PN}-gbp-release/archive/release/kinetic/${PN}/2018.4.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	dev-lang/python
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-python/future
	dev-python/lxml
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
