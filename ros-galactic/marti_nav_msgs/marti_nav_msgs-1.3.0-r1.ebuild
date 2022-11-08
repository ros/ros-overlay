# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="marti_nav_msgs"
HOMEPAGE="https://github.com/swri-robotics/marti_messages"
SRC_URI="https://github.com/ros2-gbp/marti_messages-release/archive/release/galactic/${PN}/1.3.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/geographic_msgs
	ros-galactic/geometry_msgs
	ros-galactic/marti_common_msgs
	ros-galactic/rosidl_default_runtime
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
