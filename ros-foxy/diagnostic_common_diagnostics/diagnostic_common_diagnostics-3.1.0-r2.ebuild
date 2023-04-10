# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="diagnostic_common_diagnostics"
HOMEPAGE="http://ros.org/wiki/diagnostic_common_diagnostics"
SRC_URI="https://github.com/ros2-gbp/diagnostics-release/archive/release/foxy/${PN}/3.1.0-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/diagnostic_updater
	ros-foxy/rclpy
	test? ( ros-foxy/ament_cmake_lint_cmake )
	test? ( ros-foxy/ament_cmake_xmllint )
	test? ( ros-foxy/ament_lint_auto )
	net-misc/ntp
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
