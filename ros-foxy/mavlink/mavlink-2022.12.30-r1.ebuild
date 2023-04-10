# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="MAVLink message marshaling library.\
  This package provides C-headers and [...]"
HOMEPAGE="https://mavlink.io/en/"
SRC_URI="https://github.com/${PN}/${PN}-gbp-release/archive/release/foxy/${PN}/2022.12.30-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="LGPL-3.0-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/ros_environment
	dev-util/cmake
	=dev-lang/python-3*
	dev-python/future
	dev-python/lxml
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
