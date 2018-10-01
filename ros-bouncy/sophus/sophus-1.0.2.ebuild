# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="C++ implementation of Lie Groups using Eigen."
HOMEPAGE="https://github.com/strasdat/sophus"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/bouncy/${PN}/1.0.2-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
