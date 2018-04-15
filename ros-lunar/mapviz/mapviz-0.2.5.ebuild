# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="mapviz"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/lunar/${PN}/0.2.5-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/cv_bridge
	ros-lunar/image_transport
	ros-lunar/marti_common_msgs
	ros-lunar/message_runtime
	ros-lunar/pluginlib
	ros-lunar/rosapi
	ros-lunar/roscpp
	ros-lunar/rqt_gui
	ros-lunar/rqt_gui_cpp
	ros-lunar/std_srvs
	ros-lunar/swri_transform_util
	ros-lunar/swri_yaml_util
	ros-lunar/tf
	media-libs/freeglut
	media-libs/glew
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
	x11-libs/libXi
	x11-libs/libXmu
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
	dev-qt/qtopengl:5
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
