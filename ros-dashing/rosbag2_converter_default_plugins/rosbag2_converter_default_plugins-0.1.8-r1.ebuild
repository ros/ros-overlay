# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Package containing default plugins for format converters"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/${PN}/0.1.8-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/ament_index_cpp
	ros-dashing/pluginlib
	ros-dashing/poco_vendor
	ros-dashing/rcutils
	ros-dashing/rmw
	ros-dashing/rmw_fastrtps_cpp
	ros-dashing/rosbag2
	ros-dashing/rosidl_generator_cpp
	test? ( ros-dashing/ament_cmake_gmock )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	test? ( ros-dashing/rcutils )
	test? ( ros-dashing/rmw_fastrtps_cpp )
	test? ( ros-dashing/rosbag2 )
	test? ( ros-dashing/rosbag2_test_common )
	test? ( ros-dashing/test_msgs )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
