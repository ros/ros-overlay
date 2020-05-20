# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="A \(to be\) generic joystick interface to control a robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/teleop_tools-release/archive/release/eloquent/${PN}/1.1.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/control_msgs
	ros-eloquent/rclpy
	ros-eloquent/sensor_msgs
	ros-eloquent/teleop_tools_msgs
	ros-eloquent/trajectory_msgs
	test? ( ros-eloquent/ament_copyright )
	test? ( ros-eloquent/ament_flake8 )
	test? ( ros-eloquent/ament_pep257 )
	test? ( ros-eloquent/ament_xmllint )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
