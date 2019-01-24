# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Contains message and service definitions used by the examples."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/0.6.1-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/action_msgs
	ros-crystal/rosidl_default_runtime
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	ros-crystal/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
