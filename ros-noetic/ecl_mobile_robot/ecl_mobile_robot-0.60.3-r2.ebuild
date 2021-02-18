# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="Contains transforms \(e.g. differential drive inverse kinematics\)\
	for[...]"
HOMEPAGE="http://wiki.ros.org/ecl_mobile_robot"
SRC_URI="https://github.com/yujinrobot-release/ecl_navigation-release/archive/release/noetic/${PN}/0.60.3-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/ecl_build
	ros-noetic/ecl_errors
	ros-noetic/ecl_formatters
	ros-noetic/ecl_geometry
	ros-noetic/ecl_license
	ros-noetic/ecl_linear_algebra
	ros-noetic/ecl_math
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
