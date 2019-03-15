# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Cmake macros to configure security for nodes"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/sros2-release/archive/release/crystal/${PN}/0.6.3-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/ros2cli
	ros-crystal/sros2
	test? ( ros-crystal/ament_cmake_lint_cmake )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake_test
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
