# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="RTAB-Map\'s standalone library. RTAB-Map is a RGB-D SLAM approach with real[...]"
HOMEPAGE="http://introlab.github.io/rtabmap"
SRC_URI="https://github.com/introlab/${PN}-release/archive/release/noetic/${PN}/0.21.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/grid_map_core
	ros-noetic/gtsam
	ros-noetic/libg2o
	ros-noetic/libpointmatcher
	ros-noetic/octomap
	ros-noetic/qt_gui_cpp
	sci-libs/pcl
	dev-db/sqlite:3
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	dev-util/cmake
	sci-libs/proj
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
