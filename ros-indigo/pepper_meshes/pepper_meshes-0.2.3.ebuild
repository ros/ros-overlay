# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'meshes for the Aldebaran Robotics Pepper'"
HOMEPAGE="http://github.com/ros-naoqi/pepper_meshes/"
SRC_URI="https://github.com/ros-naoqi/pepper_meshes-release/archive/release/indigo/pepper_meshes/0.2.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	virtual/jdk
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

