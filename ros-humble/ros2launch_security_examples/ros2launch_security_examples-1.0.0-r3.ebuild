# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Examples of how to use the ros2launch_security extension."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros2launch_security-release/archive/release/humble/${PN}/1.0.0-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_nodl
	ros-humble/example_interfaces
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/rclpy
	ros-humble/ros2launch_security
	ros-humble/sensor_msgs
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/launch_testing )
	test? ( ros-humble/launch_testing_ament_cmake )
	test? ( ros-humble/launch_testing_ros )
	test? ( ros-humble/nodl_python )
	test? ( ros-humble/nodl_to_policy )
	test? ( ros-humble/sros2 )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
