# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="swri_geometry_util"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/${PN}/3.0.3-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/cv_bridge
	ros-dashing/rclcpp
	ros-dashing/tf2
	test? ( ros-dashing/ament_cmake_gtest )
	dev-cpp/eigen
	sci-libs/geos
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
