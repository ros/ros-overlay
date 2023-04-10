# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Messages for interfacing with various computer vision pipelines, such as\
 [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/4.1.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/rosidl_default_runtime
	ros-humble/std_msgs
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
