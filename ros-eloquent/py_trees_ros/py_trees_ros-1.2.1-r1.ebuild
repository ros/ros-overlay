# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="ROS2 extensions and behaviours for py_trees."
HOMEPAGE="https://py-trees-ros.readthedocs.io/en/release-1.2.x/"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/eloquent/${PN}/1.2.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/py_trees
	ros-eloquent/py_trees_ros_interfaces
	ros-eloquent/rcl_interfaces
	ros-eloquent/rclpy
	ros-eloquent/ros2topic
	ros-eloquent/sensor_msgs
	ros-eloquent/std_msgs
	ros-eloquent/unique_identifier_msgs
"
DEPEND="${RDEPEND}
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
