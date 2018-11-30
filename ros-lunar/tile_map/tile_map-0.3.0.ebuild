# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Tile map provides a slippy map style interface for visualizing \
	 OpenS[...]"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/lunar/${PN}/0.3.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/libqt_core
	ros-lunar/libqt_opengl
	ros-lunar/mapviz
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/swri_math_util
	ros-lunar/swri_transform_util
	ros-lunar/swri_yaml_util
	ros-lunar/tf
	media-libs/glew
	dev-libs/jsoncpp
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/libqt_dev
	ros-lunar/libqt_opengl_dev
	ros-lunar/qt_qmake
	dev-libs/jsoncpp
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
