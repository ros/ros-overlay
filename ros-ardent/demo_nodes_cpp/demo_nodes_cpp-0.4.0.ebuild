# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="C++ nodes which were previously in the ros2/examples repository but are now[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/demos-release/archive/release/ardent/${PN}/0.4.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/example_interfaces
	ros-ardent/rclcpp
	ros-ardent/rcutils
	ros-ardent/rmw_implementation
	ros-ardent/rosidl_default_runtime
	ros-ardent/sensor_msgs
	ros-ardent/std_msgs
	test? ( ros-ardent/ament_cmake_pytest )
	test? ( ros-ardent/ament_lint_auto )
	test? ( ros-ardent/ament_lint_common )
	test? ( ros-ardent/launch )
	test? ( ros-ardent/launch_testing )
	test? ( ros-ardent/rclcpp )
	test? ( ros-ardent/rmw_implementation )
	test? ( ros-ardent/rosidl_default_generators )
	test? ( ros-ardent/rosidl_default_runtime )
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
	ros-ardent/rmw_implementation_cmake
	ros-ardent/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
