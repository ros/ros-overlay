# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="AprilTag message definitions"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/christianrauch/${PN}-release/archive/release/dashing/${PN}/2.0.0-2.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/rosidl_default_runtime
	ros-dashing/std_msgs
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
