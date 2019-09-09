# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Light version of dataflow libraries"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/aws-gbp/cloudwatch_common-release/archive/release/dashing/${PN}/1.1.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/aws_common
	test? ( ros-dashing/ament_cmake_gmock )
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( dev-cpp/gtest )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
