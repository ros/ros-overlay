# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A library to write Synchronous and Asynchronous networking applications, RO[...]"
HOMEPAGE="https://github.com/ros-drivers/transport_drivers"
SRC_URI="https://github.com/ros-drivers-gbp/transport_drivers-release/archive/release/foxy/${PN}/1.0.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/io_context
	ros-foxy/lifecycle_msgs
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/rclcpp_lifecycle
	ros-foxy/std_msgs
	ros-foxy/udp_msgs
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	dev-cpp/asio
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_auto
	ros-foxy/asio_cmake_module
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
