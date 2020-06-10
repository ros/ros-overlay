# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="val_description version including our updated meshes for unit testing and v[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/wxmerkt/${PN}-release/archive/release/noetic/${PN}/1.0.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="NASA-1.3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
