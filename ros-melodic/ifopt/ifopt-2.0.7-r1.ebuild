# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An <a href=\"http://eigen.tuxfamily.org\">Eigen-</a>\
	based interface t[...]"
HOMEPAGE="https://github.com/ethz-adrl/ifopt"
SRC_URI="https://github.com/ethz-adrl/${PN}-release/archive/release/melodic/${PN}/2.0.7-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/catkin
	sci-libs/ipopt
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
