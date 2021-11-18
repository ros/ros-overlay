# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The system modes concept assumes that a robotics system is built\
	from [...]"
HOMEPAGE="https://micro.ros.org/docs/concepts/client_library/lifecycle_and_system_modes/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/0.9.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/launch_ros
	ros-galactic/rclcpp
	ros-galactic/rclcpp_lifecycle
	ros-galactic/system_modes_msgs
	test? ( ros-galactic/ament_cmake_cppcheck )
	test? ( ros-galactic/ament_cmake_cpplint )
	test? ( ros-galactic/ament_cmake_flake8 )
	test? ( ros-galactic/ament_cmake_gmock )
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_cmake_pep257 )
	test? ( ros-galactic/ament_cmake_uncrustify )
	test? ( ros-galactic/ament_index_python )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/launch_testing_ament_cmake )
	test? ( ros-galactic/launch_testing_ros )
	test? ( ros-galactic/ros2run )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
