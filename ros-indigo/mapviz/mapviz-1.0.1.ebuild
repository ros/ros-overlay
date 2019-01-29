# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="mapviz"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/indigo/${PN}/1.0.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/cv_bridge
	ros-indigo/image_transport
	ros-indigo/libqt_core
	ros-indigo/libqt_opengl
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
	x11-libs/libXi
	x11-libs/libXmu
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/libqt_dev
	ros-indigo/libqt_opengl_dev
	ros-indigo/message_generation
	ros-indigo/qt_qmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
