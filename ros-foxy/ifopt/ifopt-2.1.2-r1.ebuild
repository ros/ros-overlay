# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="An <a href=\"http://eigen.tuxfamily.org\">Eigen-</a>\
	based interface t[...]"
HOMEPAGE="https://github.com/ethz-adrl/ifopt"
SRC_URI="https://github.com/ethz-adrl/${PN}-release/archive/release/foxy/${PN}/2.1.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ament_cmake
	sci-libs/ipopt
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
