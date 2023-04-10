# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Visualization configuration for Clearpath Husky"
HOMEPAGE="http://ros.org/wiki/husky_viz"
SRC_URI="https://github.com/clearpath-gbp/husky-release/archive/release/foxy/${PN}/1.0.7-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/husky_description
	ros-foxy/joint_state_publisher
	ros-foxy/joint_state_publisher_gui
	ros-foxy/launch_ros
	ros-foxy/robot_state_publisher
	ros-foxy/rviz2
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
