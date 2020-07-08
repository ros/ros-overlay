# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="urg_node"
HOMEPAGE="http://ros.org/wiki/urg_node"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/1.0.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/diagnostic_updater
	ros-foxy/laser_proc
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/rosidl_default_generators
	ros-foxy/sensor_msgs
	ros-foxy/std_srvs
	ros-foxy/urg_c
	ros-foxy/urg_node_msgs
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
