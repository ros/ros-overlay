# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Twist multiplexer, which multiplex several velocity commands \(topics\) and[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/foxy/${PN}/4.0.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="CC-BY-NC-SA-4.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/diagnostic_updater
	ros-foxy/geometry_msgs
	ros-foxy/rclcpp
	ros-foxy/std_msgs
	ros-foxy/visualization_msgs
	test? ( ros-foxy/ament_cmake_xmllint )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/launch )
	test? ( ros-foxy/launch_testing )
	test? ( ros-foxy/launch_testing_ament_cmake )
	test? ( ros-foxy/launch_testing_ros )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
