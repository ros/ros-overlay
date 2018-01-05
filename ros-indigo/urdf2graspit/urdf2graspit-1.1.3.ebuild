# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Conversion from URDF to the GraspIt! format."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/JenniferBuehler/graspit-pkgs-release/archive/release/indigo/${PN}/1.1.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/baselib_binding
	ros-indigo/eigen_conversions
	ros-indigo/roscpp
	ros-indigo/urdf
	ros-indigo/urdf2inventor
	ros-indigo/urdf_viewer
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslint
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
