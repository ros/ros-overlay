# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="mapviz"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/indigo/${PN}/0.0.10-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/image_transport
	ros-indigo/marti_common_msgs
	ros-indigo/message_runtime
	ros-indigo/pluginlib
	ros-indigo/rosapi
	ros-indigo/roscpp
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_cpp
	ros-indigo/std_srvs
	ros-indigo/swri_transform_util
	ros-indigo/swri_yaml_util
	ros-indigo/tf
	media-libs/freeglut
	media-libs/glew
	media-libs/opencv
	dev-qt/qtcore:4
	dev-qt/qtopengl:4
	x11-libs/libXmu
	dev-qt/qtcore:4
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	dev-qt/qtcore:4
	dev-qt/qtopengl:4
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
