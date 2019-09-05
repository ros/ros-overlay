# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="mapviz"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/kinetic/${PN}/1.2.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/image_transport
	ros-kinetic/libqt_core
	ros-kinetic/libqt_opengl
	ros-kinetic/marti_common_msgs
	ros-kinetic/message_runtime
	ros-kinetic/pluginlib
	ros-kinetic/rosapi
	ros-kinetic/roscpp
	ros-kinetic/rqt_gui
	ros-kinetic/rqt_gui_cpp
	ros-kinetic/std_srvs
	ros-kinetic/swri_transform_util
	ros-kinetic/swri_yaml_util
	ros-kinetic/tf
	media-libs/freeglut
	media-libs/glew
	x11-libs/libXi
	x11-libs/libXmu
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/libqt_dev
	ros-kinetic/libqt_opengl_dev
	ros-kinetic/message_generation
	ros-kinetic/qt_qmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
