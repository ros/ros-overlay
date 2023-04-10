# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="A \(to be\) generic joystick interface to control a robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/teleop_tools-release/archive/release/foxy/${PN}/1.3.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/control_msgs
	ros-foxy/rclpy
	ros-foxy/rosidl_runtime_py
	ros-foxy/sensor_msgs
	ros-foxy/teleop_tools_msgs
	ros-foxy/trajectory_msgs
	test? ( ros-foxy/action_tutorials_interfaces )
	test? ( ros-foxy/ament_copyright )
	test? ( ros-foxy/ament_flake8 )
	test? ( ros-foxy/ament_pep257 )
	test? ( ros-foxy/ament_xmllint )
	test? ( ros-foxy/example_interfaces )
	test? ( ros-foxy/geometry_msgs )
	test? ( ros-foxy/launch_ros )
	test? ( ros-foxy/launch_testing )
	test? ( ros-foxy/std_msgs )
	test? ( ros-foxy/std_srvs )
	test? ( ros-foxy/test_msgs )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
