# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="A robot-agnostic teleoperation node to convert keyboard commands to Twist\
[...]"
HOMEPAGE="http://wiki.ros.org/teleop_twist_keyboard"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/2.3.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/geometry_msgs
	ros-dashing/rclpy
	test? ( ros-dashing/ament_copyright )
	test? ( ros-dashing/ament_flake8 )
	test? ( ros-dashing/ament_pep257 )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
