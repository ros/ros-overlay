# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="marti_visualization_msgs"
HOMEPAGE="https://github.com/swri-robotics/marti_messages"
SRC_URI="https://github.com/ros2-gbp/marti_messages-release/archive/release/humble/${PN}/1.4.0-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/builtin_interfaces
	ros-humble/geometry_msgs
	ros-humble/rosidl_default_runtime
	ros-humble/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
