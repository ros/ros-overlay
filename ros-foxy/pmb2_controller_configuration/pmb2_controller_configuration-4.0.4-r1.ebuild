# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Launch files and scripts needed to configure\
	the controllers of the PM[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/pmb2_robot-gbp/archive/release/foxy/${PN}/4.0.4-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/controller_manager
	ros-foxy/diff_drive_controller
	ros-foxy/imu_sensor_broadcaster
	ros-foxy/joint_state_controller
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
