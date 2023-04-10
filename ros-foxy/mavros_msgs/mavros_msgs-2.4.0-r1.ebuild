# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="mavros_msgs defines messages for <a href=\"http://wiki.ros.org/mavros\">MAV[...]"
HOMEPAGE="http://wiki.ros.org/mavros_msgs"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/foxy/${PN}/2.4.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="( GPL-3.0-only LGPL-3.0-only BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geographic_msgs
	ros-foxy/geometry_msgs
	ros-foxy/rcl_interfaces
	ros-foxy/rosidl_default_runtime
	ros-foxy/sensor_msgs
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
