# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="RaspiMouse ROS 2 node"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rt-net/${PN}2-release/archive/release/dashing/${PN}/1.0.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/geometry_msgs
	ros-dashing/nav_msgs
	ros-dashing/raspimouse_msgs
	ros-dashing/rclcpp
	ros-dashing/rclcpp_components
	ros-dashing/rclcpp_lifecycle
	ros-dashing/std_msgs
	ros-dashing/std_srvs
	ros-dashing/tf2
	ros-dashing/tf2_ros
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
