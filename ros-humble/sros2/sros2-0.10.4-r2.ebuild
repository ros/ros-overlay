# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-python

DESCRIPTION="Command line tools for managing SROS2 keys"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/0.10.4-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_python
	ros-humble/rclpy
	ros-humble/ros2cli
	test? ( ros-humble/ament_copyright )
	test? ( ros-humble/ament_flake8 )
	test? ( ros-humble/ament_mypy )
	test? ( ros-humble/ament_pep257 )
	test? ( ros-humble/ros_testing )
	test? ( ros-humble/test_msgs )
	dev-python/cryptography
	dev-python/importlib_resources
	dev-python/lxml
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
