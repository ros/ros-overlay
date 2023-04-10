# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="Converts between Python dictionaries and JSON to rclpy messages."
HOMEPAGE="http://ros.org/wiki/rospy_message_converter"
SRC_URI="https://github.com/ros2-gbp/rospy_message_converter-release/archive/release/foxy/${PN}/2.0.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/rclpy
	ros-foxy/rosidl_parser
	ros-foxy/rosidl_runtime_py
	test? ( ros-foxy/ament_copyright )
	test? ( ros-foxy/ament_flake8 )
	test? ( ros-foxy/ament_pep257 )
	test? ( ros-foxy/geometry_msgs )
	test? ( ros-foxy/rclpy_message_converter_msgs )
	test? ( ros-foxy/std_msgs )
	test? ( ros-foxy/std_srvs )
	test? ( ros-foxy/tf2_msgs )
	dev-python/numpy
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-foxy/builtin_interfaces
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
