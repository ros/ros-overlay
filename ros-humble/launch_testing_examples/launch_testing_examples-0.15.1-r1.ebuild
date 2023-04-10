# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-python

DESCRIPTION="Examples of simple launch tests"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/examples-release/archive/release/humble/${PN}/0.15.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-humble/ament_copyright )
	test? ( ros-humble/ament_flake8 )
	test? ( ros-humble/ament_pep257 )
	test? ( ros-humble/demo_nodes_cpp )
	test? ( ros-humble/launch )
	test? ( ros-humble/launch_ros )
	test? ( ros-humble/launch_testing )
	test? ( ros-humble/launch_testing_ros )
	test? ( ros-humble/rclpy )
	test? ( ros-humble/ros2bag )
	test? ( ros-humble/rosbag2_transport )
	test? ( ros-humble/std_msgs )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
