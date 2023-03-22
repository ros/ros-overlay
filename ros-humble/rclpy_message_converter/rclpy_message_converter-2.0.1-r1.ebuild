# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="Converts between Python dictionaries and JSON to rclpy messages."
HOMEPAGE="http://ros.org/wiki/rospy_message_converter"
SRC_URI="https://github.com/ros2-gbp/rospy_message_converter-release/archive/release/humble/${PN}/2.0.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rclpy
	ros-humble/rosidl_parser
	ros-humble/rosidl_runtime_py
	test? ( ros-humble/ament_copyright )
	test? ( ros-humble/ament_flake8 )
	test? ( ros-humble/ament_pep257 )
	test? ( ros-humble/geometry_msgs )
	test? ( ros-humble/rclpy_message_converter_msgs )
	test? ( ros-humble/std_msgs )
	test? ( ros-humble/std_srvs )
	test? ( ros-humble/tf2_msgs )
	dev-python/numpy
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-humble/builtin_interfaces
	ros-humble/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
