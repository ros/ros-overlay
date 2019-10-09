# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="ROS2 extensions and behaviours for py_trees."
HOMEPAGE="https://py-trees-ros.readthedocs.io/en/release-1.2.x/"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/dashing/${PN}/1.2.1-2.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/py_trees
	ros-dashing/py_trees_ros_interfaces
	ros-dashing/rcl_interfaces
	ros-dashing/rclpy
	ros-dashing/ros2topic
	ros-dashing/sensor_msgs
	ros-dashing/std_msgs
	ros-dashing/unique_identifier_msgs
"
DEPEND="${RDEPEND}
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
