# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Interfaces used by py_trees_ros and py_trees_ros_tutorials."
HOMEPAGE="http://ros.org/wiki/py_trees_ros_interfaces"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/eloquent/${PN}/1.2.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/action_msgs
	ros-eloquent/diagnostic_msgs
	ros-eloquent/geometry_msgs
	ros-eloquent/rosidl_default_runtime
	ros-eloquent/unique_identifier_msgs
	test? ( ros-eloquent/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
