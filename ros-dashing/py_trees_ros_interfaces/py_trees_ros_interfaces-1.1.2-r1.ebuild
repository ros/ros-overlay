# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Interfaces used by py_trees_ros and py_trees_ros_tutorials."
HOMEPAGE="http://ros.org/wiki/py_trees_ros_interfaces"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/dashing/${PN}/1.1.2-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/action_msgs
	ros-dashing/geometry_msgs
	ros-dashing/rosidl_default_runtime
	ros-dashing/unique_identifier_msgs
	test? ( ros-dashing/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
