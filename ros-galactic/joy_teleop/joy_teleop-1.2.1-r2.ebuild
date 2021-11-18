# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="A \(to be\) generic joystick interface to control a robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/teleop_tools-release/archive/release/galactic/${PN}/1.2.1-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/control_msgs
	ros-galactic/rclpy
	ros-galactic/sensor_msgs
	ros-galactic/teleop_tools_msgs
	ros-galactic/trajectory_msgs
	test? ( ros-galactic/action_tutorials_interfaces )
	test? ( ros-galactic/ament_copyright )
	test? ( ros-galactic/ament_flake8 )
	test? ( ros-galactic/ament_pep257 )
	test? ( ros-galactic/ament_xmllint )
	test? ( ros-galactic/example_interfaces )
	test? ( ros-galactic/geometry_msgs )
	test? ( ros-galactic/std_msgs )
	test? ( ros-galactic/std_srvs )
	test? ( ros-galactic/test_msgs )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
