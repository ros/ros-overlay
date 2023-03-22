# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Interfaces for handling of joint limits for controllers or hardware."
HOMEPAGE="https://github.com/ros-controls/ros2_control/wiki"
SRC_URI="https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/${PN}/2.24.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rclcpp
	ros-humble/rclcpp_lifecycle
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/launch_testing_ament_cmake )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
