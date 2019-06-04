# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The decision which ROS middleware implementation should be used for C++."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/0.7.1-2.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/poco_vendor
	ros-dashing/rmw_implementation_cmake
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	dev-libs/poco
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/rcutils
	ros-dashing/rmw
	ros-dashing/rmw_connext_cpp
	ros-dashing/rmw_fastrtps_cpp
	ros-dashing/rmw_opensplice_cpp
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
