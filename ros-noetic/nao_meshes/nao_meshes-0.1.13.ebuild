# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="meshes for the Aldebaran Robotics NAO"
HOMEPAGE="http://github.com/ros-naoqi/nao_meshes/"
SRC_URI="https://github.com/ros-naoqi/${PN}-release/archive/release/noetic/${PN}/0.1.13-0.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="CC-BY-NC-ND-4.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	virtual/jdk
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
