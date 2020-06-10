# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The control_box_rst package provides C++ libraries for predictive control, [...]"
HOMEPAGE="http://wiki.ros.org/control_box_rst"
SRC_URI="https://github.com/rst-tu-dortmund/${PN}-release/archive/release/foxy/${PN}/0.0.7-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	sci-libs/ipopt
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
