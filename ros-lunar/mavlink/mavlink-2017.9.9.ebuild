# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="MAVLink message marshaling library.\
  This package provides C-headers and [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavlink-gbp-release/archive/release/lunar/mavlink/2017.9.9-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/catkin
	dev-lang/python
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-python/future
	dev-python/lxml
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
