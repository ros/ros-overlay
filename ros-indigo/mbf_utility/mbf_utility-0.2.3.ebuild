# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The mbf_utility package"
HOMEPAGE="http://wiki.ros.org/move_base_flex/mbf_utility"
SRC_URI="https://github.com/uos-gbp/move_base_flex-release/archive/release/indigo/${PN}/0.2.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/roscpp
	ros-indigo/tf
	ros-indigo/tf2
	ros-indigo/tf2_geometry_msgs
	ros-indigo/tf2_ros
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
