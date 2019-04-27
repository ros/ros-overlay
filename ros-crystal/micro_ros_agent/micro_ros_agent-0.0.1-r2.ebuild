# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="DDS-XCRE agent implementation"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/micro-ROS/micro-ROS-Agent-release/archive/release/crystal/${PN}/0.0.1-2.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/fastcdr
	ros-crystal/fastrtps
	ros-crystal/microxrcedds_agent_cmake_module
	ros-crystal/rclcpp
	ros-crystal/rosidl_cmake
	ros-crystal/rosidl_parser
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
