# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="ROS messages for Geographic Information Systems."
HOMEPAGE="http://wiki.ros.org/geographic_msgs"
SRC_URI="https://github.com/ros2-gbp/geographic_info-release/archive/release/humble/${PN}/1.0.4-6.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/rosidl_default_runtime
	ros-humble/std_msgs
	ros-humble/unique_identifier_msgs
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
