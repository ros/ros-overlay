# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Abstracted Messages from Perception Modalities"
HOMEPAGE="http://wiki.ros.org/derived_object_msgs"
SRC_URI="https://github.com/astuff/astuff_sensor_msgs-release/archive/release/dashing/${PN}/3.0.0-2.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/builtin_interfaces
	ros-dashing/geometry_msgs
	ros-dashing/radar_msgs
	ros-dashing/rosidl_default_runtime
	ros-dashing/shape_msgs
	ros-dashing/std_msgs
	test? ( ros-dashing/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
