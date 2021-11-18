# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The State Machine Compiler \(SMC\) from http://smc.sourceforge.net/\
	co[...]"
HOMEPAGE="http://smc.sourceforge.net/"
SRC_URI="https://github.com/ros2-gbp/bond_core-release/archive/release/galactic/${PN}/3.0.1-4.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="MPL-1.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
