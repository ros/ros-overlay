# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="This package provides a set of typedef\'s that allow\
  using Eigen datatyp[...]"
HOMEPAGE="http://eigen.tuxfamily.org/dox/TopicUnalignedArrayAssert.html"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.0.0-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
