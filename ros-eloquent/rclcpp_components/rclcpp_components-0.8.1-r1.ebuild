# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Package containing tools for dynamically loadable components"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rclcpp-release/archive/release/eloquent/${PN}/0.8.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/ament_index_cpp
	ros-eloquent/class_loader
	ros-eloquent/composition_interfaces
	ros-eloquent/rclcpp
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/launch_testing )
	test? ( ros-eloquent/std_msgs )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_ros
	ros-eloquent/rcpputils
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
