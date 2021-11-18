# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Messages for rclcpp_cascade_lifecycle package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/fmrico/cascade_lifecycle-release/archive/release/galactic/${PN}/1.0.0-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/lifecycle_msgs
	ros-galactic/rclcpp
	ros-galactic/rosidl_default_generators
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
