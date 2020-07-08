# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Layer encapsulating ROS middleware to allow rosbag2 to be used with or with[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/${PN}/0.3.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/python_cmake_module
	ros-foxy/rclcpp
	ros-foxy/rmw
	ros-foxy/rosbag2_compression
	ros-foxy/rosbag2_cpp
	ros-foxy/rpyutils
	ros-foxy/shared_queues_vendor
	ros-foxy/yaml_cpp_vendor
	test? ( ros-foxy/ament_cmake_gmock )
	test? ( ros-foxy/ament_index_cpp )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/rmw_implementation_cmake )
	test? ( ros-foxy/rosbag2_test_common )
	test? ( ros-foxy/test_msgs )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
