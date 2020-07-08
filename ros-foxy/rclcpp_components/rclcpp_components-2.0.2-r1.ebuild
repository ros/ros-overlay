# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Package containing tools for dynamically loadable components"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rclcpp-release/archive/release/foxy/${PN}/2.0.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_index_cpp
	ros-foxy/class_loader
	ros-foxy/composition_interfaces
	ros-foxy/rclcpp
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/launch_testing )
	test? ( ros-foxy/std_msgs )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
	ros-foxy/rcpputils
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
