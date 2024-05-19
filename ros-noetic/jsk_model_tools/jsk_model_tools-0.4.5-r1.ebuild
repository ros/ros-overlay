# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="<p>Metapackage that contains model_tools package for jsk-ros-pkg</p>"
HOMEPAGE="http://ros.org/wiki/jsk_model_tools"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/noetic/${PN}/0.4.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/eus_assimp
	ros-noetic/euscollada
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
