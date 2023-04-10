# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="The tuw_msgs meta package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tuw-robotics/${PN}-release/archive/release/humble/${PN}/0.0.15-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/tuw_airskin_msgs
	ros-humble/tuw_geometry_msgs
	ros-humble/tuw_multi_robot_msgs
	ros-humble/tuw_nav_msgs
	ros-humble/tuw_object_msgs
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
