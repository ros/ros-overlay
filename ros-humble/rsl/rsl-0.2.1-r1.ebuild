# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ROS Support Library"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/RSL-release/archive/release/humble/${PN}/0.2.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rclcpp
	ros-humble/tcb_span
	ros-humble/tl_expected
	dev-cpp/eigen
	dev-libs/libfmt
	test? ( sys-devel/clang )
	test? ( dev-cpp/range-v3 )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	app-doc/doxygen
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
