# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A library to write Synchronous and Asynchronous networking applications"
HOMEPAGE="https://github.com/ros-drivers/transport_drivers"
SRC_URI="https://github.com/ros2-gbp/transport_drivers-release/archive/release/humble/${PN}/1.2.0-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rclcpp
	ros-humble/std_msgs
	ros-humble/udp_msgs
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	dev-cpp/asio
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_auto
	ros-humble/asio_cmake_module
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
