# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Meshes for the Pepper robot, for ROS2"
HOMEPAGE="http://github.com/ros-naoqi/pepper_meshes2/"
SRC_URI="https://github.com/ros-naoqi/${PN}2-release/archive/release/galactic/${PN}/2.0.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="CC-BY-NC-ND-4.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	virtual/jdk
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
