# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The realsense_ros2_camera package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros2_intel_realsense-release/archive/release/dashing/${PN}/2.0.4-2.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/builtin_interfaces
	ros-dashing/cv_bridge
	ros-dashing/librealsense2
	ros-dashing/rclcpp
	ros-dashing/realsense_camera_msgs
	ros-dashing/rmw_implementation
	ros-dashing/rosidl_default_runtime
	ros-dashing/sensor_msgs
	ros-dashing/std_msgs
	ros-dashing/tf2_ros
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/image_transport
	ros-dashing/rosidl_default_generators
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
