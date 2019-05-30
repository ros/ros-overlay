# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The nmea_msgs package contains messages related to data in the NMEA format."
HOMEPAGE="http://ros.org/wiki/nmea_msgs"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/2.0.0-1.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/builtin_interfaces
	ros-crystal/rosidl_default_runtime
	ros-crystal/std_msgs
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	ros-crystal/rosidl_default_generators
	ros-crystal/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
