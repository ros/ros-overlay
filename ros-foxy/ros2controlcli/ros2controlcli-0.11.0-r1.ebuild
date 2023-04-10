# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="The ROS 2 command line tools for ROS2 Control."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/${PN}/0.11.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/controller_manager
	ros-foxy/controller_manager_msgs
	ros-foxy/rclpy
	ros-foxy/ros2cli
	ros-foxy/ros2node
	ros-foxy/ros2param
	ros-foxy/rosidl_runtime_py
	test? ( ros-foxy/ament_copyright )
	test? ( ros-foxy/ament_flake8 )
	test? ( ros-foxy/ament_pep257 )
	test? ( ros-foxy/ament_xmllint )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
