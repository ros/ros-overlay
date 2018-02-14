# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="tf2_msgs"
HOMEPAGE="http://www.ros.org/wiki/tf2_msgs"
SRC_URI="https://github.com/ros2-gbp/geometry2-release/archive/release/ardent/${PN}/0.8.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-ardent/builtin_interfaces
	ros-ardent/geometry_msgs
	ros-ardent/rosidl_default_runtime
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
	ros-ardent/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
