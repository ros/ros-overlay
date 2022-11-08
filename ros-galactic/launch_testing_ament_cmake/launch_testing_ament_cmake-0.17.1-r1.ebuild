# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package providing cmake functions for running launch tests from the build."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/launch-release/archive/release/galactic/${PN}/0.17.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-galactic/ament_cmake_copyright )
	test? ( ros-galactic/launch_testing )
	test? ( ros-galactic/python_cmake_module )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
