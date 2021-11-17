# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS messages and interfaces for universally unique identifiers.\
\
	Not [...]"
HOMEPAGE="http://ros.org/wiki/unique_identifier"
SRC_URI="https://github.com/ros-geographic-info/${PN}-release/archive/release/noetic/${PN}/1.0.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/unique_id
	ros-noetic/uuid_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
