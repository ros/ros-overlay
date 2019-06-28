# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Cmake macros to configure security for nodes"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/sros2-release/archive/release/dashing/${PN}/0.7.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/ros2cli
	ros-dashing/sros2
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/ament_cmake_test
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
