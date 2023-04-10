# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Bound incoming velocity messages according to robot velocity and accelerati[...]"
HOMEPAGE="https://index.ros.org/p/kobuki_velocity_smoother/github-kobuki-base-velocity_smoother/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/0.15.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/nav_msgs
	ros-foxy/rcl_interfaces
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	test? ( ros-foxy/ament_cmake_cppcheck )
	test? ( ros-foxy/ament_cmake_cpplint )
	test? ( ros-foxy/ament_cmake_flake8 )
	test? ( ros-foxy/ament_cmake_lint_cmake )
	test? ( ros-foxy/ament_cmake_pep257 )
	test? ( ros-foxy/ament_cmake_uncrustify )
	test? ( ros-foxy/ament_cmake_xmllint )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/launch_testing )
	test? ( ros-foxy/launch_testing_ament_cmake )
	test? ( ros-foxy/launch_testing_ros )
	test? ( ros-foxy/ros2test )
	test? ( dev-python/matplotlib )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
	ros-foxy/ecl_build
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
