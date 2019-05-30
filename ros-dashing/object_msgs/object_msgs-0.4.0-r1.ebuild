# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This package defines messages for NCS inference"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros2_${PN}-release/archive/release/dashing/${PN}/0.4.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/rosidl_default_runtime
	ros-dashing/sensor_msgs
	ros-dashing/std_msgs
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/rosidl_default_generators
	ros-dashing/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
