# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="urg_node"
HOMEPAGE="http://ros.org/wiki/urg_node"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/1.0.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/builtin_interfaces
	ros-dashing/diagnostic_updater
	ros-dashing/laser_proc
	ros-dashing/rclcpp
	ros-dashing/rclcpp_components
	ros-dashing/rosidl_default_generators
	ros-dashing/sensor_msgs
	ros-dashing/std_srvs
	ros-dashing/urg_c
	ros-dashing/urg_node_msgs
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
