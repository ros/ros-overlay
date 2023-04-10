# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-python

DESCRIPTION="ROS2 extensions and behaviours for py_trees."
HOMEPAGE="https://py-trees-ros.readthedocs.io/en/release-1.2.x/"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.2.2-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/py_trees
	ros-humble/py_trees_ros_interfaces
	ros-humble/rcl_interfaces
	ros-humble/rclpy
	ros-humble/ros2topic
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/tf2_ros_py
	ros-humble/unique_identifier_msgs
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
