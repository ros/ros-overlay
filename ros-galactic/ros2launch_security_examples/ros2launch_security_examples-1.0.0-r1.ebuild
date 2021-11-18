# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Examples of how to use the ros2launch_security extension."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros2launch_security-release/archive/release/galactic/${PN}/1.0.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_nodl
	ros-galactic/example_interfaces
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/rclpy
	ros-galactic/ros2launch_security
	ros-galactic/sensor_msgs
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/launch_testing )
	test? ( ros-galactic/launch_testing_ament_cmake )
	test? ( ros-galactic/launch_testing_ros )
	test? ( ros-galactic/nodl_python )
	test? ( ros-galactic/nodl_to_policy )
	test? ( ros-galactic/sros2 )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
