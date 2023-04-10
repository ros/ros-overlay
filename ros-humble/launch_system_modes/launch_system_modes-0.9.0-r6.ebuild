# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-python

DESCRIPTION="System modes specific extensions to the launch tool, i.e. launch actions, e[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/system_modes-release/archive/release/humble/${PN}/0.9.0-6.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_python
	ros-humble/launch
	ros-humble/osrf_pycommon
	ros-humble/rclpy
	ros-humble/system_modes_msgs
	test? ( ros-humble/ament_copyright )
	test? ( ros-humble/ament_flake8 )
	test? ( ros-humble/ament_pep257 )
	dev-python/importlib_metadata
	dev-python/pyyaml
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
