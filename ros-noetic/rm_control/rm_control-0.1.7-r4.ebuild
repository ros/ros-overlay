# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Meta package that contains package of rm_control."
HOMEPAGE="https://github.com/rm-controls/rm_control"
SRC_URI="https://github.com/rm-controls/${PN}-release/archive/release/noetic/${PN}/0.1.7-4.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/rm_common
	ros-noetic/rm_description
	ros-noetic/rm_gazebo
	ros-noetic/rm_hw
	ros-noetic/rm_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
