# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-python

DESCRIPTION="The ROS 2 command line tools for ROS2 Control."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/${PN}/2.25.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/controller_manager
	ros-humble/controller_manager_msgs
	ros-humble/rcl_interfaces
	ros-humble/rclpy
	ros-humble/ros2cli
	ros-humble/ros2node
	ros-humble/ros2param
	ros-humble/rosidl_runtime_py
	test? ( ros-humble/ament_copyright )
	test? ( ros-humble/ament_flake8 )
	test? ( ros-humble/ament_pep257 )
	test? ( ros-humble/ament_xmllint )
	dev-python/pygraphviz
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
