# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Launch files to upload the robot description and start the controllers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/${PN}/4.0.5-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/joy_teleop
	ros-humble/launch_pal
	ros-humble/play_motion2
	ros-humble/robot_state_publisher
	ros-humble/tiago_controller_configuration
	ros-humble/tiago_description
	ros-humble/twist_mux
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
