# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="This  library contains wrappers for generating floating point values, integ[...]"
HOMEPAGE="http://ros.org/wiki/random_numbers"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.0.1-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_cmake )
	dev-libs/boost
	dev-libs/boost
	dev-libs/boost
	dev-libs/boost
	dev-libs/boost[threads]
	dev-libs/boost[threads]
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
