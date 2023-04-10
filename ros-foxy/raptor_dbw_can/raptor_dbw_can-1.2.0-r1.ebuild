# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Drive-by-wire interface to the New Eagle Raptor DBW kit"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/${PN}/1.2.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/can_dbc_parser
	ros-foxy/can_msgs
	ros-foxy/geometry_msgs
	ros-foxy/raptor_dbw_msgs
	ros-foxy/raptor_pdu
	ros-foxy/raptor_pdu_msgs
	ros-foxy/rclcpp
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
