# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS <a href=\"http://ros.org/wiki/Master\">Master</a> implementation."
HOMEPAGE="http://wiki.ros.org/rosmaster"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/${PN}/1.15.9-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/rosgraph
	dev-python/defusedxml
	dev-python/defusedxml
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
