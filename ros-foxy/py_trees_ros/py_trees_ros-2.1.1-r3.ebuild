# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="ROS2 extensions and behaviours for py_trees."
HOMEPAGE="https://py-trees-ros.readthedocs.io/en/release-1.2.x/"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/foxy/${PN}/2.1.1-3.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/py_trees
	ros-foxy/py_trees_ros_interfaces
	ros-foxy/rcl_interfaces
	ros-foxy/rclpy
	ros-foxy/ros2topic
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/tf2_ros
	ros-foxy/unique_identifier_msgs
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
