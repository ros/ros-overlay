# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Ecl frontend to a linear matrix package (currently eigen).'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_linear_algebra/0.61.17-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ecl_build
	ros-kinetic/ecl_converters
	ros-kinetic/ecl_eigen
	ros-kinetic/ecl_exceptions
	ros-kinetic/ecl_formatters
	ros-kinetic/ecl_license
	ros-kinetic/ecl_math
	ros-kinetic/sophus
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

