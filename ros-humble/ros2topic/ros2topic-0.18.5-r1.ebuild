# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-python

DESCRIPTION="The topic command for ROS 2 command line tools."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/${PN}/0.18.5-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD-3-Clause )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rclpy
	ros-humble/ros2cli
	ros-humble/rosidl_runtime_py
	test? ( ros-humble/ament_copyright )
	test? ( ros-humble/ament_flake8 )
	test? ( ros-humble/ament_pep257 )
	test? ( ros-humble/ament_xmllint )
	test? ( ros-humble/geometry_msgs )
	test? ( ros-humble/launch )
	test? ( ros-humble/launch_ros )
	test? ( ros-humble/launch_testing )
	test? ( ros-humble/launch_testing_ros )
	test? ( ros-humble/rosgraph_msgs )
	test? ( ros-humble/std_msgs )
	test? ( ros-humble/test_msgs )
	dev-python/numpy
	dev-python/pyyaml
	test? ( dev-python/pytest )
	test? ( dev-python/pytest-timeout )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
