# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The system modes concept assumes that a robotics system is built\
	from [...]"
HOMEPAGE="https://micro.ros.org/docs/concepts/client_library/lifecycle_and_system_modes/"
SRC_URI="https://github.com/microROS/${PN}-release/archive/release/foxy/${PN}/0.9.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/launch_ros
	ros-foxy/rclcpp
	ros-foxy/rclcpp_lifecycle
	ros-foxy/system_modes_msgs
	test? ( ros-foxy/ament_cmake_cppcheck )
	test? ( ros-foxy/ament_cmake_cpplint )
	test? ( ros-foxy/ament_cmake_flake8 )
	test? ( ros-foxy/ament_cmake_gmock )
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_cmake_pep257 )
	test? ( ros-foxy/ament_cmake_uncrustify )
	test? ( ros-foxy/ament_index_python )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/launch_testing_ament_cmake )
	test? ( ros-foxy/launch_testing_ros )
	test? ( ros-foxy/ros2run )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
