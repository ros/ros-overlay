# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Common plugins for the Mapviz visualization tool"
HOMEPAGE="https://github.com/swri-robotics/mapviz"
SRC_URI="https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/${PN}/1.3.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/cv_bridge
	ros-melodic/gps_common
	ros-melodic/image_transport
	ros-melodic/libqt_core
	ros-melodic/libqt_opengl
	ros-melodic/map_msgs
	ros-melodic/mapviz
	ros-melodic/marti_common_msgs
	ros-melodic/marti_nav_msgs
	ros-melodic/marti_sensor_msgs
	ros-melodic/marti_visualization_msgs
	ros-melodic/move_base_msgs
	ros-melodic/nav_msgs
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/stereo_msgs
	ros-melodic/swri_image_util
	ros-melodic/swri_math_util
	ros-melodic/swri_route_util
	ros-melodic/swri_transform_util
	ros-melodic/swri_yaml_util
	ros-melodic/tf
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/libqt_dev
	ros-melodic/libqt_opengl_dev
	ros-melodic/qt_qmake
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
