# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="swri_geometry_util"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/eloquent/${PN}/3.2.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/cv_bridge
	ros-eloquent/rclcpp
	ros-eloquent/tf2
	test? ( ros-eloquent/ament_cmake_gtest )
	dev-cpp/eigen
	sci-libs/geos
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
