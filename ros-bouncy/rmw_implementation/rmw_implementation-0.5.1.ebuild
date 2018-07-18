# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The decision which ROS middleware implementation should be used for C++."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/bouncy/${PN}/0.5.1-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/poco_vendor
	ros-bouncy/rmw_implementation_cmake
	test? ( ros-bouncy/ament_lint_auto )
	test? ( ros-bouncy/ament_lint_common )
	dev-libs/poco
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
	ros-bouncy/rcutils
	ros-bouncy/rmw
	ros-bouncy/rmw_connext_cpp
	ros-bouncy/rmw_fastrtps_cpp
	ros-bouncy/rmw_opensplice_cpp
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
