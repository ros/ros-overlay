# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="mavros_msgs defines messages for <a href=\"http://wiki.ros.org/mavros\">MAV[...]"
HOMEPAGE="http://wiki.ros.org/mavros_msgs"
SRC_URI="https://github.com/ros2-gbp/mavros-release/archive/release/humble/${PN}/2.4.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="( GPL-3.0-only LGPL-3.0-only BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/geographic_msgs
	ros-humble/geometry_msgs
	ros-humble/rcl_interfaces
	ros-humble/rosidl_default_runtime
	ros-humble/sensor_msgs
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
