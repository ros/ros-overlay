# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Example files used as tutorials for MRPT ROS packages"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/${PN}/1.0.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/teleop_twist_keyboard
	ros-noetic/tf2
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
