# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Bound incoming velocity messages according to robot velocity and accelerati[...]"
HOMEPAGE="https://index.ros.org/p/kobuki_velocity_smoother/github-kobuki-base-velocity_smoother/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/0.15.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/geometry_msgs
	ros-galactic/nav_msgs
	ros-galactic/rcl_interfaces
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	test? ( ros-galactic/ament_cmake_cppcheck )
	test? ( ros-galactic/ament_cmake_cpplint )
	test? ( ros-galactic/ament_cmake_flake8 )
	test? ( ros-galactic/ament_cmake_lint_cmake )
	test? ( ros-galactic/ament_cmake_pep257 )
	test? ( ros-galactic/ament_cmake_uncrustify )
	test? ( ros-galactic/ament_cmake_xmllint )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/launch_testing )
	test? ( ros-galactic/launch_testing_ament_cmake )
	test? ( ros-galactic/launch_testing_ros )
	test? ( ros-galactic/ros2test )
	test? ( dev-python/matplotlib )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
	ros-galactic/ecl_build
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
