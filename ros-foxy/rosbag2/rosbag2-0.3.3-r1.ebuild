# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Meta package for rosbag2 related packages"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/0.3.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ros2bag
	ros-foxy/rosbag2_compression
	ros-foxy/rosbag2_converter_default_plugins
	ros-foxy/rosbag2_cpp
	ros-foxy/rosbag2_storage
	ros-foxy/rosbag2_storage_default_plugins
	ros-foxy/rosbag2_transport
	ros-foxy/shared_queues_vendor
	ros-foxy/sqlite3_vendor
	test? ( ros-foxy/rosbag2_test_common )
	test? ( ros-foxy/rosbag2_tests )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
