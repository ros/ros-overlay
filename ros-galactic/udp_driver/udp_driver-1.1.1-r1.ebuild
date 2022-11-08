# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A library to write Synchronous and Asynchronous networking applications, RO[...]"
HOMEPAGE="https://github.com/ros-drivers/transport_drivers"
SRC_URI="https://github.com/ros2-gbp/transport_drivers-release/archive/release/galactic/${PN}/1.1.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/io_context
	ros-galactic/lifecycle_msgs
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/rclcpp_lifecycle
	ros-galactic/std_msgs
	ros-galactic/udp_msgs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	dev-cpp/asio
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_auto
	ros-galactic/asio_cmake_module
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
