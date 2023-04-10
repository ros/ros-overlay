# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="The system modes concept assumes that a robotics system is built\
	from [...]"
HOMEPAGE="https://micro.ros.org/docs/concepts/client_library/lifecycle_and_system_modes/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/0.9.0-6.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/builtin_interfaces
	ros-humble/launch_ros
	ros-humble/rclcpp
	ros-humble/rclcpp_lifecycle
	ros-humble/system_modes_msgs
	test? ( ros-humble/ament_cmake_cppcheck )
	test? ( ros-humble/ament_cmake_cpplint )
	test? ( ros-humble/ament_cmake_flake8 )
	test? ( ros-humble/ament_cmake_gmock )
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_cmake_pep257 )
	test? ( ros-humble/ament_cmake_uncrustify )
	test? ( ros-humble/ament_index_python )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/launch_testing_ament_cmake )
	test? ( ros-humble/launch_testing_ros )
	test? ( ros-humble/ros2run )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
