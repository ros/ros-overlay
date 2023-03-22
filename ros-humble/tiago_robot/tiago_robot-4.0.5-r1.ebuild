# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Description and controller configuration of TIAGo"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/${PN}-release/archive/release/humble/${PN}/4.0.5-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/tiago_bringup
	ros-humble/tiago_controller_configuration
	ros-humble/tiago_description
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
