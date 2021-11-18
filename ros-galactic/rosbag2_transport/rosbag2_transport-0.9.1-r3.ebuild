# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Layer encapsulating ROS middleware to allow rosbag2 to be used with or with[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/galactic/${PN}/0.9.1-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/rclcpp
	ros-galactic/rmw
	ros-galactic/rosbag2_compression
	ros-galactic/rosbag2_cpp
	ros-galactic/rosbag2_interfaces
	ros-galactic/rosbag2_storage
	ros-galactic/shared_queues_vendor
	ros-galactic/yaml_cpp_vendor
	test? ( ros-galactic/ament_cmake_gmock )
	test? ( ros-galactic/ament_index_cpp )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/rmw_implementation_cmake )
	test? ( ros-galactic/rosbag2_test_common )
	test? ( ros-galactic/test_msgs )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
