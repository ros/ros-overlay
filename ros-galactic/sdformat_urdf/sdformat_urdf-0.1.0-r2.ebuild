# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="URDF plugin to parse SDFormat XML into URDF C++ DOM objects."
HOMEPAGE="https://github.com/ros/sdformat_urdf"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/0.1.0-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/tinyxml2_vendor
	ros-galactic/urdf
	ros-galactic/urdf_parser_plugin
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/sdformat_test_files )
	dev-libs/sdformat
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
	ros-galactic/pluginlib
	dev-libs/urdfdom_headers
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
