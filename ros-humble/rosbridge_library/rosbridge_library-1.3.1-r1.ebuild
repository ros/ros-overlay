# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="The core rosbridge package, responsible for interpreting JSON andperforming[...]"
HOMEPAGE="http://ros.org/wiki/rosbridge_library"
SRC_URI="https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/${PN}/1.3.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rclpy
	ros-humble/rosidl_default_runtime
	test? ( ros-humble/actionlib_msgs )
	test? ( ros-humble/ament_cmake_pytest )
	test? ( ros-humble/builtin_interfaces )
	test? ( ros-humble/diagnostic_msgs )
	test? ( ros-humble/example_interfaces )
	test? ( ros-humble/geometry_msgs )
	test? ( ros-humble/nav_msgs )
	test? ( ros-humble/rosbridge_test_msgs )
	test? ( ros-humble/sensor_msgs )
	test? ( ros-humble/std_msgs )
	test? ( ros-humble/std_srvs )
	test? ( ros-humble/stereo_msgs )
	test? ( ros-humble/tf2_msgs )
	test? ( ros-humble/trajectory_msgs )
	test? ( ros-humble/visualization_msgs )
	dev-python/pymongo
	dev-python/pillow
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
