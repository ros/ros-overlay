# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Bound incoming velocity messages according to robot velocity and accelerati[...]"
HOMEPAGE="https://index.ros.org/p/kobuki_velocity_smoother/github-kobuki-base-velocity_smoother/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/0.15.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/nav_msgs
	ros-humble/rcl_interfaces
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	test? ( ros-humble/ament_cmake_cppcheck )
	test? ( ros-humble/ament_cmake_cpplint )
	test? ( ros-humble/ament_cmake_flake8 )
	test? ( ros-humble/ament_cmake_lint_cmake )
	test? ( ros-humble/ament_cmake_pep257 )
	test? ( ros-humble/ament_cmake_uncrustify )
	test? ( ros-humble/ament_cmake_xmllint )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/launch_testing )
	test? ( ros-humble/launch_testing_ament_cmake )
	test? ( ros-humble/launch_testing_ros )
	test? ( ros-humble/ros2test )
	test? ( dev-python/matplotlib )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
	ros-humble/ecl_build
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
