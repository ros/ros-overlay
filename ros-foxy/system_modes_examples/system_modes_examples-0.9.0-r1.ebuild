# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Example systems and according launch files for the system_modes\
	package."
HOMEPAGE="https://micro.ros.org/docs/concepts/client_library/lifecycle_and_system_modes/"
SRC_URI="https://github.com/microROS/system_modes-release/archive/release/foxy/${PN}/0.9.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/launch
	ros-foxy/launch_system_modes
	ros-foxy/rclcpp
	ros-foxy/rclcpp_lifecycle
	ros-foxy/ros2launch
	ros-foxy/system_modes
	ros-foxy/system_modes_msgs
	test? ( ros-foxy/ament_cmake_cppcheck )
	test? ( ros-foxy/ament_cmake_cpplint )
	test? ( ros-foxy/ament_cmake_flake8 )
	test? ( ros-foxy/ament_cmake_gmock )
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_cmake_pep257 )
	test? ( ros-foxy/ament_cmake_uncrustify )
	test? ( ros-foxy/ament_lint_auto )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
