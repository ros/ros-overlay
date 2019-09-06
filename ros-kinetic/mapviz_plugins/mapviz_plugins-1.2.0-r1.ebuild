# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Common plugins for the Mapviz visualization tool"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/${PN}/1.2.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/cv_bridge
	ros-kinetic/gps_common
	ros-kinetic/image_transport
	ros-kinetic/libqt_core
	ros-kinetic/libqt_opengl
	ros-kinetic/map_msgs
	ros-kinetic/mapviz
	ros-kinetic/marti_common_msgs
	ros-kinetic/marti_nav_msgs
	ros-kinetic/marti_visualization_msgs
	ros-kinetic/move_base_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/stereo_msgs
	ros-kinetic/swri_image_util
	ros-kinetic/swri_math_util
	ros-kinetic/swri_route_util
	ros-kinetic/swri_transform_util
	ros-kinetic/swri_yaml_util
	ros-kinetic/tf
	ros-kinetic/visualization_msgs
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
