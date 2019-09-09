# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="multires_image"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/${PN}/1.2.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cv_bridge
	ros-kinetic/geometry_msgs
	ros-kinetic/gps_common
	ros-kinetic/libqt_core
	ros-kinetic/libqt_opengl
	ros-kinetic/mapviz
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/swri_math_util
	ros-kinetic/swri_transform_util
	ros-kinetic/swri_yaml_util
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/libqt_dev
	ros-kinetic/libqt_opengl_dev
	ros-kinetic/qt_qmake
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
