# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Meta package for rosbag2 related packages"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/0.15.4-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ros2bag
	ros-humble/rosbag2_compression
	ros-humble/rosbag2_compression_zstd
	ros-humble/rosbag2_cpp
	ros-humble/rosbag2_py
	ros-humble/rosbag2_storage
	ros-humble/rosbag2_storage_default_plugins
	ros-humble/rosbag2_transport
	ros-humble/shared_queues_vendor
	ros-humble/sqlite3_vendor
	test? ( ros-humble/rosbag2_test_common )
	test? ( ros-humble/rosbag2_tests )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
