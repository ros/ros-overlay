# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="AutonomouStuff PACMod v3 Driver Package"
HOMEPAGE="http://wiki.ros.org/pacmod3"
SRC_URI="https://github.com/astuff/${PN}-release/archive/release/dashing/${PN}/1.3.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/can_msgs
	ros-dashing/pacmod_msgs
	ros-dashing/rclcpp
	ros-dashing/rclcpp_components
	ros-dashing/rclcpp_lifecycle
	ros-dashing/std_msgs
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
