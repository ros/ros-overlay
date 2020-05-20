# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="mapviz"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/melodic/${PN}/1.3.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cv_bridge
	ros-melodic/image_transport
	ros-melodic/libqt_core
	ros-melodic/libqt_opengl
	ros-melodic/marti_common_msgs
	ros-melodic/message_runtime
	ros-melodic/pluginlib
	ros-melodic/rosapi
	ros-melodic/roscpp
	ros-melodic/rqt_gui
	ros-melodic/rqt_gui_cpp
	ros-melodic/std_srvs
	ros-melodic/swri_transform_util
	ros-melodic/swri_yaml_util
	ros-melodic/tf
	media-libs/freeglut
	media-libs/glew
	x11-libs/libXi
	x11-libs/libXmu
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/libqt_dev
	ros-melodic/libqt_opengl_dev
	ros-melodic/message_generation
	ros-melodic/qt_qmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
