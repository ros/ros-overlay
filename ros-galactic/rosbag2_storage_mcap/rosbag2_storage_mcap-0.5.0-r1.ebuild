# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="rosbag2 storage plugin using the MCAP file format"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/0.5.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_cpp
	ros-galactic/mcap_vendor
	ros-galactic/pluginlib
	ros-galactic/rcutils
	ros-galactic/rosbag2_storage
	test? ( ros-galactic/ament_cmake_clang_format )
	test? ( ros-galactic/ament_cmake_gmock )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/rcpputils )
	test? ( ros-galactic/rosbag2_cpp )
	test? ( ros-galactic/rosbag2_storage_mcap_testdata )
	test? ( ros-galactic/rosbag2_test_common )
	test? ( ros-galactic/std_msgs )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
