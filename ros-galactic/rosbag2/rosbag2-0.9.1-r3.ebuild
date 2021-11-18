# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Meta package for rosbag2 related packages"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/0.9.1-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ros2bag
	ros-galactic/rosbag2_compression
	ros-galactic/rosbag2_compression_zstd
	ros-galactic/rosbag2_cpp
	ros-galactic/rosbag2_py
	ros-galactic/rosbag2_storage
	ros-galactic/rosbag2_storage_default_plugins
	ros-galactic/rosbag2_transport
	ros-galactic/shared_queues_vendor
	ros-galactic/sqlite3_vendor
	test? ( ros-galactic/rosbag2_test_common )
	test? ( ros-galactic/rosbag2_tests )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
