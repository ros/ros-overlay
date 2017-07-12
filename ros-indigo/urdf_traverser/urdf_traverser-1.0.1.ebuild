# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Urdf traverser C which provides functions to traverse	  the URDF and con"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/JenniferBuehler/urdf-tools-pkgs-release/archive/release/indigo/urdf_traverser/1.0.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/baselib_binding
	ros-indigo/eigen_conversions
	ros-indigo/roscpp
	ros-indigo/roslint
	ros-indigo/urdf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

