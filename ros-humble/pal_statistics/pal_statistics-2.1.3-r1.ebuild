# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="The pal_statistics package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/${PN}-release/archive/release/humble/${PN}/2.1.3-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/pal_statistics_msgs
	ros-humble/rclcpp
	ros-humble/rclpy
	test? ( ros-humble/ament_cmake_gmock )
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
