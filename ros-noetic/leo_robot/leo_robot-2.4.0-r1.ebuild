# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Metapackage of software to install on Leo Rover."
HOMEPAGE="http://wiki.ros.org/leo_robot"
SRC_URI="https://github.com/fictionlab-gbp/${PN}-release/archive/release/noetic/${PN}/2.4.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/leo
	ros-noetic/leo_bringup
	ros-noetic/leo_fw
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
