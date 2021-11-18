# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="TODO: Package description"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ijnek/naosoccer_sim-release/archive/release/galactic/${PN}/0.0.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/geometry_msgs
	ros-galactic/nao_command_msgs
	ros-galactic/nao_sensor_msgs
	ros-galactic/rclcpp
	ros-galactic/soccer_vision_msgs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
