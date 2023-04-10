# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ROS support for the Pilz laser scanner"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/PilzDE/${PN}-ros2-release/archive/release/foxy/${PN}/0.20.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="LGPL-3.0-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/launch_ros
	ros-foxy/rclcpp
	ros-foxy/rcutils
	ros-foxy/robot_state_publisher
	ros-foxy/rviz2
	ros-foxy/sensor_msgs
	ros-foxy/xacro
	test? ( ros-foxy/ament_cmake_clang_format )
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_cmake_ros )
	test? ( ros-foxy/ament_cmake_xmllint )
	test? ( ros-foxy/ament_index_python )
	test? ( ros-foxy/launch )
	test? ( ros-foxy/launch_ros )
	test? ( ros-foxy/launch_testing )
	test? ( ros-foxy/launch_xml )
	test? ( ros-foxy/rclpy )
	test? ( ros-foxy/ros_testing )
	test? ( ros-foxy/rosbag2_cpp )
	test? ( ros-foxy/rosbag2_storage_default_plugins )
	dev-libs/libfmt
	dev-libs/boost
	test? ( dev-libs/console_bridge )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
