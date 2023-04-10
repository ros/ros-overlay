# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="PMB2 robot description and launch files"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/${PN}-gbp/archive/release/humble/${PN}/5.0.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/pmb2_bringup
	ros-humble/pmb2_controller_configuration
	ros-humble/pmb2_description
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
