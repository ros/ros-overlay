# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-python

DESCRIPTION="A \(to be\) generic joystick interface to control a robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/teleop_tools-release/archive/release/humble/${PN}/1.3.0-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/control_msgs
	ros-humble/rclpy
	ros-humble/rosidl_runtime_py
	ros-humble/sensor_msgs
	ros-humble/teleop_tools_msgs
	ros-humble/trajectory_msgs
	test? ( ros-humble/action_tutorials_interfaces )
	test? ( ros-humble/ament_copyright )
	test? ( ros-humble/ament_flake8 )
	test? ( ros-humble/ament_pep257 )
	test? ( ros-humble/ament_xmllint )
	test? ( ros-humble/example_interfaces )
	test? ( ros-humble/geometry_msgs )
	test? ( ros-humble/launch_ros )
	test? ( ros-humble/launch_testing )
	test? ( ros-humble/std_msgs )
	test? ( ros-humble/std_srvs )
	test? ( ros-humble/test_msgs )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
