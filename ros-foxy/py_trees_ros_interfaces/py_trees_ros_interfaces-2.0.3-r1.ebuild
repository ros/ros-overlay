# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Interfaces used by py_trees_ros and py_trees_ros_tutorials."
HOMEPAGE="http://ros.org/wiki/py_trees_ros_interfaces"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/foxy/${PN}/2.0.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/action_msgs
	ros-foxy/diagnostic_msgs
	ros-foxy/geometry_msgs
	ros-foxy/rosidl_default_runtime
	ros-foxy/unique_identifier_msgs
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
