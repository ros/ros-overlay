# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="cob_linear_nav provides a simple navigation instrument driving on a linear [...]"
HOMEPAGE="http://ros.org/wiki/cob_linear_nav"
SRC_URI="https://github.com/ipa320/cob_navigation-release/archive/release/noetic/${PN}/0.6.11-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/angles
	ros-noetic/cob_srvs
	ros-noetic/geometry_msgs
	ros-noetic/move_base_msgs
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/tf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
