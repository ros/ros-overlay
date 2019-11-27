# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://gitlab.com/micro-ROS/ros_tracing/ros2_tracing-release/repository/archive.tar.gz?ref=release/eloquent/${PN}/0.2.10-1 -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/rclcpp
	ros-eloquent/std_msgs
	ros-eloquent/std_srvs
	test? ( ros-eloquent/ament_cmake_pytest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/launch_ros )
	test? ( ros-eloquent/tracetools )
	test? ( ros-eloquent/tracetools_launch )
	test? ( ros-eloquent/tracetools_read )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
