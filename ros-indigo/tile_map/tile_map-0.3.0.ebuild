# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Tile map provides a slippy map style interface for visualizing \
	 OpenS[...]"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/indigo/${PN}/0.3.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/libqt_core
	ros-indigo/libqt_opengl
	ros-indigo/mapviz
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/swri_math_util
	ros-indigo/swri_transform_util
	ros-indigo/swri_yaml_util
	ros-indigo/tf
	media-libs/glew
	dev-libs/jsoncpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/libqt_dev
	ros-indigo/libqt_opengl_dev
	ros-indigo/qt_qmake
	dev-libs/jsoncpp
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
