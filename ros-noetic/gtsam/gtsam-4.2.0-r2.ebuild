# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="gtsam"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mrpt-ros-pkg-release/${PN}-release/archive/release/noetic/${PN}/4.2.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	dev-libs/boost[python]
	dev-util/cmake
	dev-cpp/eigen
	dev-cpp/tbb
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
